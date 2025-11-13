.class public final Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

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

    const-string p2, "FpstFingerprintLockSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const p2, 0x7f1423d8

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    const/4 p1, 0x0

    const-string p2, "FpstFingerprintLockSettings"

    const-string/jumbo v0, "onRemovalSucceeded"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1423bf

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1423c7

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$2;-><init>(I)V

    const v1, 0x104000a

    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;I)V

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
