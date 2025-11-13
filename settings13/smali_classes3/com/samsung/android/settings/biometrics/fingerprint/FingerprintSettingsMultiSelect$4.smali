.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;
.super Ljava/lang/Object;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteAllFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

.field final synthetic val$isEnableFeatures:Z

.field final synthetic val$isEnableFingerprintLock:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;ZZ)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFingerprintLock:Z

    iput-boolean p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFeatures:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 837
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fputmDeleteAllDialog(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;)V

    return-void
.end method

.method public onNegativeClick()V
    .locals 2

    .line 832
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x2025

    const/16 v1, 0x2028

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 6

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    .line 816
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2025

    const/16 v3, 0x2029

    const-wide/16 v4, 0x5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IIJ)V

    .line 818
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFingerprintLock:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    .line 819
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_lockscreen_is_smart_lock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 822
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFingerprintLock:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFeatures:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$mdeleteFingerprintOperation(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Z)Z

    goto :goto_1

    .line 823
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$mdeleteFingerprintOperation(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Z)Z

    .line 827
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fputmIsAllFingerprintRemove(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Z)V

    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method
