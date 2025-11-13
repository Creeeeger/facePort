.class public final Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;
.super Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getMaximumFailedPasswordsBeforeWipe()I
    .locals 3

    iget-object p0, p0, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    :goto_0
    return v2
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "failed_password_wipe_managed_profile"

    return-object p0
.end method
