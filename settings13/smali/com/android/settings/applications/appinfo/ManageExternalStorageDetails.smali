.class public Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ManageExternalStorageDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBridge:Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPermissionState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

.field private mSwitchPref:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 p1, 0x6c2

    goto :goto_0

    :cond_0
    const/16 p1, 0x6c3

    :goto_0
    move v2, p1

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->getMetricsCategory()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p2

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method private setManageExternalStorageState(Z)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v1, 0x5c

    invoke-virtual {v0, v1, p0, p1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71e

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mBridge:Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    const-string v0, "appops"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 66
    sget p1, Lcom/android/settings/R$xml;->sec_manage_external_storage_permission_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    const/16 v0, 0xf

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 97
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    .line 98
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mBridge:Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mPermissionState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 110
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->setManageExternalStorageState(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->refreshUi()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected refreshUi()Z
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mBridge:Lcom/android/settings/applications/AppStateManageExternalStorageBridge;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->getManageExternalStoragePermState(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mPermissionState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    .line 166
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mPermissionState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setManageExternalStorageState(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "appops"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 132
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 134
    invoke-direct {p0, p4, p2}, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ManageExternalStorageDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 p2, 0x5c

    invoke-virtual {p0, p2, p3, p1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    return-void
.end method
