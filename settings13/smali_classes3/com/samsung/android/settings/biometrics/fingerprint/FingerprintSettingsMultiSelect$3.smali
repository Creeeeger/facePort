.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintSettingsMultiSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .line 729
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove Error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", activity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FpstFingerprintSettingsMultiSelect"

    invoke-static {p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 733
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 734
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 733
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRemoveCallback onRemovalSucceeded called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,remaining : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    .line 716
    invoke-static {v0, p2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_removed:I

    invoke-static {p2, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeTalkback(Landroid/content/Context;Landroid/view/View;I)V

    .line 719
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$mcheckFinishDeleteOperation(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 720
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x3e8

    .line 721
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    const/4 v0, 0x0

    .line 720
    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 721
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 723
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$mdeleteFingerprintSequentially(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    :goto_0
    return-void
.end method
