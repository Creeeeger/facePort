.class public Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mPermissionState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

.field public mSwitchPref:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x810

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const p1, 0x7f170149

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "apps_media_routing_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mSwitchPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "apps_media_routing_settings_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz p0, :cond_0

    const p1, 0x7f1402f4

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    const p0, 0x985d

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mSwitchPref:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const v0, 0x985d

    const/16 v2, 0xf5f

    invoke-static {v0, v2, p1, p2}, Lcom/android/settings/applications/AppInfoWithHeader;->insertEventLogging(IILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mPermissionState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    if-eq v4, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/16 v0, 0x6e

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    const/16 v2, 0x810

    const/16 v3, 0x810

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->refreshUi()Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final refreshUi()Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/applications/AppStateMediaRoutingAppsBridge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/applications/AppStateMediaRoutingAppsBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v3

    iget-object v0, v0, Lcom/samsung/android/settings/applications/AppStateMediaRoutingAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v4, "android:media_routing_control"

    invoke-virtual {v0, v4, v2, v1}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iput-object v3, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mPermissionState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mSwitchPref:Landroidx/preference/SecSwitchPreference;

    iget-boolean v1, v3, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mSwitchPref:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/appinfo/MediaRoutingAppsDetails;->mPermissionState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
