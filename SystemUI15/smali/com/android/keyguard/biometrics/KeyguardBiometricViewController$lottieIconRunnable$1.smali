.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    sget v1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetLockIconState()V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-boolean v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->mShowingRetryButton:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->acceptLockStarModifier()V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecLockIconView;->updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    return-void
.end method
