.class public Lcom/android/settings/applications/appinfo/WriteSettingsDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "WriteSettingsDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroidx/preference/SwitchPreference;

.field private mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput v2, v0, v1

    .line 55
    sput-object v0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->APP_OPS_OP_CODE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;
    .locals 0

    .line 192
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_0

    .line 194
    :cond_0
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    .line 192
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    .line 179
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v1, :cond_0

    .line 180
    check-cast v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    goto :goto_0

    .line 181
    :cond_0
    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_1

    .line 182
    new-instance p1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {p1, v0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    move-object v0, p1

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    .line 188
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setCanWriteSettings(Z)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

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
    const/16 v2, 0x17

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

    .line 199
    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xdd

    return p0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x306

    goto :goto_0

    :cond_0
    const/16 p1, 0x307

    .line 135
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    const-string v0, "appops"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 76
    sget p1, Lcom/android/settings/R$xml;->sec_write_system_settings_permissions_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    .line 82
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 90
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1d03

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .line 107
    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->setCanWriteSettings(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->refreshUi()Z

    :cond_0
    return v0

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

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .line 157
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    const/16 v2, 0x80

    iget p0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    const/4 p0, 0x1

    return p0
.end method

.method public setCanWriteSettings(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "appops"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    const/16 p4, 0x17

    .line 126
    invoke-virtual {p1, p4, p3, p2, p0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method
