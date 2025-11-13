.class public final Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
