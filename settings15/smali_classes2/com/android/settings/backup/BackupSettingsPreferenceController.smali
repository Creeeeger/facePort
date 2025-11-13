.class public final Lcom/android/settings/backup/BackupSettingsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public mBackupSettingsIntent:Landroid/content/Intent;

.field public mBackupSettingsSummary:Ljava/lang/String;

.field public mBackupSettingsTitle:Ljava/lang/CharSequence;

.field public mManufacturerIntent:Landroid/content/Intent;

.field public mManufacturerLabel:Ljava/lang/String;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "backup_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "manufacturer_backup"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
