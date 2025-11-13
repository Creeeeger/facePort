.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$handleAttemptLockout$1;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$handleAttemptLockout$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$handleAttemptLockout$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
