.class public abstract Lcom/android/settings/enterprise/PrivacySettingsPreferenceFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static createPrivacySettingsPreference(Landroid/content/Context;)Lcom/android/settings/enterprise/PrivacySettingsPreference;
    .locals 2

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/settings/enterprise/PrivacySettingsFinancedPreference;

    invoke-direct {v0, p0}, Lcom/android/settings/enterprise/PrivacySettingsFinancedPreference;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;

    invoke-direct {v0, p0}, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
