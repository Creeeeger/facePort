.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->removeFingerPrint(Landroid/app/Activity;Landroid/hardware/fingerprint/Fingerprint;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;ILandroid/app/Activity;)V
    .locals 0

    .line 2962
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;->val$userId:I

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    .line 2970
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

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChooseLockGenericFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;->val$activity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 2972
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    .line 2965
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;->val$userId:I

    invoke-static {p1, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->-$$Nest$mdeleteAllFingerPrintForUser(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;I)V

    return-void
.end method
