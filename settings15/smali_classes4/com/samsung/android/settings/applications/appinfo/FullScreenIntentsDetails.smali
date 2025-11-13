.class public Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mFullScreenIntentsState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

.field public mManageFullScreenIntentsBridge:Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;

.field public mSwitchPref:Landroidx/preference/TwoStatePreference;


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

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mManageFullScreenIntentsBridge:Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const p1, 0x7f1701c1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "full_screen_intents_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const p0, 0x9868

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    iget-object p0, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mManageFullScreenIntentsBridge:Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v2, 0x9868

    const/16 v3, 0xf6a

    invoke-static {v2, v3, p1, v0}, Lcom/android/settings/applications/AppInfoWithHeader;->insertEventLogging(IILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mFullScreenIntentsState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mFullScreenIntentsState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    const-string p1, "FullScreenIntentsDetails"

    const-string p2, "PackageInfo is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const/16 p2, 0x85

    invoke-virtual {v0, p2, p1, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->refreshUi()Z

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final refreshUi()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const-string p0, "FullScreenIntentsDetails"

    const-string v0, "PackageInfo is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mManageFullScreenIntentsBridge:Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mFullScreenIntentsState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mSwitchPref:Landroidx/preference/TwoStatePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/appinfo/FullScreenIntentsDetails;->mFullScreenIntentsState:Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method
