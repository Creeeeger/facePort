.class public final Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

.field public final synthetic val$isEnableFeatures:Z

.field public final synthetic val$isEnableFingerprintLock:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFingerprintLock:Z

    iput-boolean p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFeatures:Z

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mDeleteAllDialog:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    return-void
.end method

.method public final onNegativeClick()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x2025

    const/16 v1, 0x2028

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    return-void
.end method

.method public final onPositiveClick()V
    .locals 7

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    const-string v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2025

    invoke-static {v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2029

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x5

    invoke-static {v5, v6, v2, v3, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFingerprintLock:Z

    if-eqz v3, :cond_0

    const-string v4, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_lockscreen_is_smart_lock"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    if-nez v3, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$4;->val$isEnableFeatures:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprintSequentially()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "fingerprint_secret_box"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "fingerprint_webpass"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "fingerprint_fingerIndex"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "fingerprint_used_samsungaccount"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "fingerprint_samsungaccount_confirmed"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p0, "setFingerprintScreenLockDisable"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    iget-object v0, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->mUserId:I

    invoke-static {v2, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprintSequentially()V

    :goto_1
    return-void
.end method
