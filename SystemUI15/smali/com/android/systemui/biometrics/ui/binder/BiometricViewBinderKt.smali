.class public abstract Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$asDefaultHelpMessage(Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFingerprint()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1306cb

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
