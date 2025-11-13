.class public final Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->disableScreenOffSetting(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintShowIconSettings;->disableScreenOffSetting(Z)V

    :cond_1
    :goto_0
    return-void
.end method
