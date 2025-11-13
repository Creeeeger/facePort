.class public Lcom/android/settings/vpn2/AppManagementFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppManagementFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;
    }
.end annotation


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

.field private mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private final mUserId:I

.field private mVpnLabel:Ljava/lang/String;

.field private mVpnManager:Landroid/net/VpnManager;


# direct methods
.method static bridge synthetic -$$Nest$misVpnAlwaysOn(Lcom/android/settings/vpn2/AppManagementFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAlwaysOnVpn(Lcom/android/settings/vpn2/AppManagementFragment;ZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpn(ZZ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    .line 87
    new-instance v0, Lcom/android/settings/vpn2/AppManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/AppManagementFragment$1;-><init>(Lcom/android/settings/vpn2/AppManagementFragment;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    return-void
.end method

.method static appHasVpnPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    const-string v0, "appops"

    .line 365
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 366
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    .line 368
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    :array_0
    .array-data 4
        0x2f
        0x5e
    .end array-data
.end method

.method private getAlwaysOnVpnPackage()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnManager:Landroid/net/VpnManager;

    iget p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/net/VpnManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAnotherVpnActive()Z
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnManager:Landroid/net/VpnManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVpnAlwaysOn()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getAlwaysOnVpnPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private loadInfo()Z
    .locals 4

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AppManagementFragment"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "empty bundle"

    .line 332
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string/jumbo v3, "package"

    .line 336
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p0, "empty package name"

    .line 338
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 343
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    const-string/jumbo p0, "package does not include an application"

    .line 351
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 354
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p0}, Lcom/android/settings/vpn2/AppManagementFragment;->appHasVpnPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "package didn\'t register VPN profile"

    .line 355
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "package not found"

    .line 346
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private onAlwaysOnVpnClick(ZZ)Z
    .locals 6

    .line 233
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isAnotherVpnActive()Z

    move-result v1

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v3

    .line 235
    invoke-static {v1, v3, p2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->shouldShow(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 238
    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroidx/fragment/app/Fragment;ZZZZLandroid/os/Bundle;)V

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(ZZ)Z

    move-result p0

    return p0
.end method

.method private onForgetVpnClick()Z
    .locals 6

    .line 223
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    const/4 p0, 0x1

    return p0
.end method

.method private setAlwaysOnVpn(ZZ)Z
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnManager:Landroid/net/VpnManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 271
    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, v2

    .line 270
    :goto_0
    invoke-virtual {v0, v1, p0, p2, v2}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method private setAlwaysOnVpnByUI(ZZ)Z
    .locals 1

    .line 252
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    .line 253
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 257
    :cond_0
    iget v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 260
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpn(ZZ)Z

    move-result p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 261
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result p1

    if-nez p1, :cond_3

    .line 262
    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->show(Lcom/android/settings/vpn2/AppManagementFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateUI()V

    :goto_0
    return p2
.end method

.method public static show(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;I)V
    .locals 3

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/vpn2/AppManagementFragment;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 111
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    .line 113
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ManageablePreference;->getUserId()I

    move-result p1

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updateRestrictedViews()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    const-string/jumbo v2, "no_config_vpn"

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getAlwaysOnVpnPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 299
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 300
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isAlwaysOnVpnLockdownEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnManager:Landroid/net/VpnManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/VpnManager;->isAlwaysOnVpnPackageSupportedForUser(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->vpn_always_on_summary:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 312
    iget-object p0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->vpn_always_on_summary_not_supported:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public onConfirmLockdown(Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 248
    invoke-direct {p0, p2, p3}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(ZZ)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    sget p1, Lcom/android/settings/R$xml;->vpn_app_management:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnManager:Landroid/net/VpnManager;

    const-string p1, "always_on_vpn"

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string p1, "lockdown_vpn"

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string p1, "forget_vpn"

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    .line 130
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 206
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "always_on_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lockdown_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown key is clicked: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppManagementFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->onAlwaysOnVpnClick(ZZ)Z

    move-result p0

    return p0

    .line 208
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->onAlwaysOnVpnClick(ZZ)Z

    move-result p0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 194
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "forget_vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown key is clicked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppManagementFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->onForgetVpnClick()Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->loadInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateUI()V

    .line 143
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/android/settings/vpn2/AppManagementFragment$2;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/vpn2/AppManagementFragment$2;-><init>(Lcom/android/settings/vpn2/AppManagementFragment;Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 180
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 182
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 183
    sget v1, Lcom/android/settings/R$string;->vpn_version:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 186
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method
