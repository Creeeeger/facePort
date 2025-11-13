.class public final Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onRemovalError : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FpstFingerprintSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    const p2, 0x7f1423d8

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    const-string p1, "FpstFingerprintSettings"

    const-string p2, "RemovalSucceeded of corrupted fingerprints."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    const p2, 0x7f1423c7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method
