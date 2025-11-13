.class public abstract Lcom/android/settings/safetycenter/SafetyCenterUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getControllersForAdvancedPrivacy(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v2, "privacy_work_profile_notifications_category"

    const-string v3, "privacy_lock_screen_work_profile_notifications"

    const-string v4, "privacy_lock_screen_notifications"

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getControllersForAdvancedSecurity(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/security/UserCredentialsPreferenceController;

    invoke-direct {p2, p0}, Lcom/android/settings/security/UserCredentialsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/security/ResetCredentialsPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/ResetCredentialsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/security/InstallCertificatePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/security/InstallCertificatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;

    const-string p2, "sdcard_encrypt_status"

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static replaceEnterpriseStringsForPrivacyEntries(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 3

    const-string v0, "Settings.WORK_PROFILE_LOCKED_NOTIFICATION_TITLE"

    const v1, 0x7f14159d

    const-string v2, "privacy_lock_screen_work_profile_notifications"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.CONNECTED_WORK_AND_PERSONAL_APPS_TITLE"

    const v1, 0x7f14125c

    const-string v2, "interact_across_profiles_privacy"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.WORK_PROFILE_NOTIFICATIONS_SECTION_HEADER"

    const v1, 0x7f141da9

    const-string v2, "privacy_work_profile_notifications_category"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.WORK_PROFILE_PRIVACY_POLICY_INFO"

    const v1, 0x7f1437ce

    const-string v2, "work_policy_info"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.WORK_PROFILE_PRIVACY_POLICY_INFO_SUMMARY"

    const v1, 0x7f1437cf

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static replaceEnterpriseStringsForSecurityEntries(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 3

    const-string v0, "Settings.WORK_PROFILE_SET_UNLOCK_LAUNCH_PICKER_TITLE"

    const v1, 0x7f143052

    const-string v2, "unlock_set_or_change_profile"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.WORK_PROFILE_UNIFY_LOCKS_SUMMARY"

    const v1, 0x7f141593

    const-string v2, "unification"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.FINGERPRINT_FOR_WORK"

    const v1, 0x7f142a69

    const-string v2, "fingerprint_settings_profile"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.MANAGE_DEVICE_ADMIN_APPS"

    const v1, 0x7f1416d2

    const-string v2, "manage_device_admin"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.WORK_PROFILE_SECURITY_TITLE"

    const v1, 0x7f14158d

    const-string v2, "security_category_profile"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "Settings.MANAGED_DEVICE_INFO"

    const v1, 0x7f140e45

    const-string v2, "enterprise_privacy"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
