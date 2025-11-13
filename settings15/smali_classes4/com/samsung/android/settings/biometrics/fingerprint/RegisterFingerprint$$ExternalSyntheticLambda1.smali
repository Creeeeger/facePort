.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;

    sget p1, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v0, "showSensorErrorDialog dismiss!!"

    invoke-static {p1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "enrollResult"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
