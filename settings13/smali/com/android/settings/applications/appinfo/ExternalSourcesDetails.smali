.class public Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ExternalSourcesDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mFromSecuritySettings:Z

.field private mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

.field private mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 4

    .line 120
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 121
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_install_unknown_sources"

    .line 122
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    const-string v3, "no_install_unknown_sources_globally"

    .line 124
    invoke-virtual {v1, v3, v0}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    or-int/2addr v0, v2

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 128
    sget p1, Lcom/android/settings/R$string;->disabled_by_admin:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    .line 130
    sget p1, Lcom/android/settings/R$string;->disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v2, "isNonMarketAppAllowed"

    .line 138
    invoke-static {p0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 144
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferenceSummary : blockNonMarketAppInstall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalSourcesDetails"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 146
    sget p1, Lcom/android/settings/R$string;->disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_3
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 151
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 153
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_0

    .line 154
    :cond_4
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    .line 152
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setCanInstallApps(Z)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 257
    sget p0, Lcom/android/settings/R$string;->install_other_apps:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x328

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mFromSecuritySettings:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "top_level_bio_and_security"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "top_level_apps"

    :goto_0
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    const-string v0, "appops"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 77
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    .line 80
    sget p1, Lcom/android/settings/R$xml;->sec_external_sources_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "external_sources_settings_switch"

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 85
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "fromSecuritySettings"

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mFromSecuritySettings:Z

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1e85

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 101
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 103
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result p1

    if-eq p2, p1, :cond_2

    .line 104
    const-class p1, Lcom/android/settings/Settings$ManageAppExternalSourcesActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    .line 106
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 108
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setCanInstallApps(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->refreshUi()Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1e86

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method protected refreshUi()Z
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v3, "isNonMarketAppAllowed"

    invoke-static {v0, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 204
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshUi : blockNonMarketAppInstall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ExternalSourcesDetails"

    invoke-static {v4, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    .line 208
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const-string v5, "no_install_unknown_sources"

    .line 207
    invoke-virtual {v0, v5, v4}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v3, :cond_2

    goto :goto_1

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v3, "no_install_unknown_sources_globally"

    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 235
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v0

    if-nez v0, :cond_5

    .line 237
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    return v2

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v2

    .line 212
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->disabled:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 215
    invoke-static {v0, v5, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_7

    .line 218
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    .line 220
    :cond_7
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_2
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method public setAllAppsNotAllow(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/settings/applications/AppStateBaseBridge;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;",
            "Lcom/android/settings/applications/AppStateBaseBridge;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const-string v0, "appops"

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 p1, 0x0

    .line 175
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 176
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    .line 177
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 178
    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x42

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 181
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p3, v1, v0}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCanInstallApps(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "appops"

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    const/16 p4, 0x42

    .line 166
    invoke-virtual {p1, p4, p3, p2, p0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method
