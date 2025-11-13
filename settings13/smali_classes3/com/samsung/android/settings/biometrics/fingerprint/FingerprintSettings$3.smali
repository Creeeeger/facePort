.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->deleteAllFingerprints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

.field final synthetic val$remainCount:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;I)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iput p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->val$remainCount:I

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .line 660
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemovalError : "

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

    const-string p2, "FpstFingerprintSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 663
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 664
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 663
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemovalSucceeded called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,remaining : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FpstFingerprintSettings"

    .line 650
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->-$$Nest$fgetmFingerprintManager(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->semUpdateMatcher(I)Z

    .line 653
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_removed:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeTalkback(Landroid/content/Context;Landroid/view/View;I)V

    .line 654
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->val$remainCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move p2, v1

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showTemplateChangeToast(Landroid/content/Context;Z)V

    .line 655
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
