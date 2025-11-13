.class public final Lcom/android/settings/development/PackagePolicyPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# instance fields
.field public mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;


# direct methods
.method public static synthetic access$000(Lcom/android/settings/development/PackagePolicyPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "package_policy_disabled"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getScpmVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "package_policy_disabled"

    return-object p0
.end method

.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "package_policy_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/PackagePolicyPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/PackagePolicyPreferenceController;->access$000(Lcom/android/settings/development/PackagePolicyPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "package_policy_disabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;-><init>(Lcom/android/settings/development/PackagePolicyPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    iget-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/PackagePolicyPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/PackagePolicyPreferenceController;->access$000(Lcom/android/settings/development/PackagePolicyPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->mPackagePolicyUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "package_policy_disabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
