.class public Lcom/android/settings/development/PackagePolicyPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "PackagePolicyPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;
    }
.end annotation


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/development/PackagePolicyPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/PackagePolicyPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/development/PackagePolicyPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 77
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "package_policy_disabled"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "package_policy_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->register(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "package_policy_disabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;-><init>(Lcom/android/settings/development/PackagePolicyPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mSettingsObserver:Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->register(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "package_policy_disabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 95
    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
