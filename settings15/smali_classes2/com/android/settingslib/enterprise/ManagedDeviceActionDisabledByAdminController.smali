.class public final Lcom/android/settingslib/enterprise/ManagedDeviceActionDisabledByAdminController;
.super Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getAdminSupportContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    iget-object p1, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;I)V

    const-string p0, "Settings.CONTACT_YOUR_IT_ADMIN"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAdminSupportTitle()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    iget-object v0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;I)V

    const-string p0, "Settings.DISABLED_BY_IT_ADMIN_TITLE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setupLearnMoreButton(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
