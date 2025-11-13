.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintSettingsEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .line 830
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 832
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

    const-string p2, "FpstFingerprintSettingsRenameFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 834
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 835
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 834
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRemoveCallback onRemovalSucceeded called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,remaining : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    .line 821
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/os/Handler;

    move-result-object p2

    .line 824
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    .line 823
    invoke-virtual {p2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 824
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 825
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->sec_biometrics_common_removed:I

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeTalkback(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method
