.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V
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

    .line 1308
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1311
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->-$$Nest$fgetresult_intent(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1312
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->-$$Nest$mfromFingerprintSettings(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1313
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->-$$Nest$fputmKeepSessionAndActivity(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;I)V

    .line 1315
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->-$$Nest$mcloseSessionAndFinish(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V

    return-void
.end method
