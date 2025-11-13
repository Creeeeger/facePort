.class public final Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Remove Error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", activity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActivity:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FpstFingerprintSettingsRename"

    invoke-static {p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActivity:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    const p2, 0x7f1423d8

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-boolean p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const p2, 0x7f1423bf

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "mRemoveCallback onRemovalSucceeded called: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,remaining : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FpstFingerprintSettingsRename"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mHandler:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$2;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActivity:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActivity:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const p2, 0x7f14212d

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
