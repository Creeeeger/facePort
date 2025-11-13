.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    packed-switch p1, :pswitch_data_0

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnValue(Landroid/content/Context;IZ)V

    if-eqz p2, :cond_0

    const p1, 0x7f142129

    goto :goto_0

    :cond_0
    const p1, 0x7f142128

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIcon:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconSwitch:Landroid/widget/Switch;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/widget/Switch;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAod:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAodSpinner:Landroid/widget/Spinner;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/view/View;Z)V

    return-void

    :pswitch_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintEffectValue(Landroid/content/Context;IZ)V

    if-eqz p2, :cond_1

    const p1, 0x7f142129

    goto :goto_1

    :cond_1
    const p1, 0x7f142128

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffectSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
