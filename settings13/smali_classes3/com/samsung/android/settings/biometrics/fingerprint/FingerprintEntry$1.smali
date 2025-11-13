.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->deleteAllFingerprints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .line 289
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

    const-string p2, "FpstFingerprintEntry"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 291
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 290
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    const-string p1, "FpstFingerprintEntry"

    const-string p2, "onRemovalSucceeded"

    .line 283
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->-$$Nest$mshowDatabaseFailureDialog(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)V

    return-void
.end method
