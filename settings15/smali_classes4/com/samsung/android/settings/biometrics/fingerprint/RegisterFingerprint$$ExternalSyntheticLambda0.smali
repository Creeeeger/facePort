.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sget p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->$r8$clinit:I

    const-string p0, "FpstRegisterTouchFingerprint"

    const-string/jumbo p1, "showSensorErrorDialog OK!!"

    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
