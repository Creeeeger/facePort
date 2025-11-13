.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->lambda$setDeleteAllBiometric$1(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;Landroid/app/Activity;)V
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .line 2936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteAllFingerprints Error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChooseLockGenericFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$1;->val$context:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 2938
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 2937
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    const-string p0, "ChooseLockGenericFragment"

    const-string p1, "deleteAllFingerprints Success"

    .line 2944
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
