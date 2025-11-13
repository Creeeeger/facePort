.class public Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final BIOMETRIC_ENROLL_REQUEST:I = 0x3e9


# instance fields
.field public mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

.field public mGkPwHandle:J

.field public mNextClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x794

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_1

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p3

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0x3ea

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;->mNextClicked:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0039

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    new-instance p1, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;->mActiveUnlockStatusUtils:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mUserId = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActiveUnlockRequireBiometricSetup"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "gk_pw_handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;->mGkPwHandle:J

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const p1, 0x7f14298e

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    const p1, 0x7f14298d

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f142992

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    const p1, 0x7f142991

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const p1, 0x7f142990

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    const p1, 0x7f14298f

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const v0, 0x7f1408bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;I)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v3, 0x2

    const v4, 0x7f15045e

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const v0, 0x7f14298b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;I)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v2, 0x5

    const v3, 0x7f15045d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public final shouldFinishWhenBackgrounded()Z
    .locals 1

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
