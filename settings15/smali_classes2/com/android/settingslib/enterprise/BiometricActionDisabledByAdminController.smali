.class public final Lcom/android/settingslib/enterprise/BiometricActionDisabledByAdminController;
.super Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getAdminSupportContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f140d10

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAdminSupportTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f140d14

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPositiveButtonListener(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    new-instance p0, Lcom/android/settingslib/enterprise/BiometricActionDisabledByAdminController$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/enterprise/BiometricActionDisabledByAdminController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-object p0
.end method

.method public final setupLearnMoreButton(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
