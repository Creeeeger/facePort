.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->deleteAllFingerprints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .line 984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemovalError : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FpstFingerprintLockSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 986
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 985
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    const-string p1, "FpstFingerprintLockSettings"

    const-string p2, "onRemovalSucceeded"

    .line 978
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->-$$Nest$mshowDatabaseFailureDialog(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V

    return-void
.end method
