.class public final synthetic Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction;

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    iput-wide p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method
