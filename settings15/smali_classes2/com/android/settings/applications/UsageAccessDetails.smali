.class public Lcom/android/settings/applications/UsageAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mSettingsIntent:Landroid/content/Intent;

.field public mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field public mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

.field public mUsageDesc:Landroidx/preference/Preference;

.field public mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xb7

    return p0
.end method

.method public logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 p1, 0x30f

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/16 p1, 0x310

    goto :goto_0

    :goto_1
    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    const/16 v3, 0xb7

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UsageAccessDetails"

    const-string v1, "Unsupported app package."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const p1, 0x7f170145

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const-string p1, "app_ops_settings_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const v0, 0x7f14307f

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const v0, 0x7f1427bb

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Landroidx/preference/Preference;

    const v0, 0x7f143080

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    const p1, 0x9864

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.USAGE_ACCESS_CONFIG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x9864

    const/16 v2, 0xf66

    invoke-static {v1, v2, p1, v0}, Lcom/android/settings/applications/AppInfoWithHeader;->insertEventLogging(IILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x1080400

    iget-object v0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    const p2, 0x1040014

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    iget-object p2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v1, Lcom/android/settings/applications/UsageAccessDetails$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/UsageAccessDetails$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/UsageAccessDetails;)V

    const-string v2, "Settings.WORK_PROFILE_DISABLE_USAGE_ACCESS_WARNING"

    invoke-virtual {p2, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p2, 0x7f141b4c

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/applications/UsageAccessDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-object v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-static {v1, v0}, Lcom/android/settings/applications/UsageAccessDetails;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-object v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.LOADER_USAGE_STATS"

    invoke-static {v1, v0}, Lcom/android/settings/applications/UsageAccessDetails;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x5f

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->refreshUi()Z

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final refreshUi()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry$1()V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const-string v4, "android:get_usage_stats"

    invoke-virtual {v1, v4, v3}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkEcmRestrictionAndSetDisabled(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v1, v1, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    xor-int/2addr v1, v2

    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    const/16 v3, 0x80

    iget v4, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_3

    const-string v0, "android.settings.metadata.USAGE_ACCESS_REASON"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return v2
.end method

.method public final setHasAccess(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILcom/android/settings/applications/AppStateUsageBridge$UsageState;Z)V
    .locals 2

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p4}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const v1, 0x1080400

    iput v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    const v0, 0x1040014

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f1437d5

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const v0, 0x7f141b4c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    invoke-virtual {p0, p5, p2}, Lcom/android/settings/applications/UsageAccessDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    xor-int/lit8 p1, p5, 0x1

    iget-object p5, p4, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object p5, p5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    invoke-static {v0, p5}, Lcom/android/settings/applications/UsageAccessDetails;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x2b

    invoke-virtual {p5, v0, p3, p2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_1
    iget-object p4, p4, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object p4, p4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string p5, "android.permission.LOADER_USAGE_STATS"

    invoke-static {p5, p4}, Lcom/android/settings/applications/UsageAccessDetails;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 p4, 0x5f

    invoke-virtual {p0, p4, p3, p2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_2
    return-void
.end method
