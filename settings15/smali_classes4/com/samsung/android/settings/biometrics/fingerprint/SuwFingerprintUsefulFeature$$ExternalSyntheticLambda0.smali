.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

.field public final synthetic f$1:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result p0

    const-string v0, "FpstSuwFingerprintUsefulFeature"

    if-eqz p0, :cond_0

    const-string p0, "Set Fingerprint Unlock disable"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlockSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "Set Fingerprint Unlock enable"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlockSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method
