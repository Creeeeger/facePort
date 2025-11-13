.class public Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "BiometricsAndSecuritySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mBiometricsBackupObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mIsKeeperLaunched:Z

.field private mKnoxCustomIsProKioskMode:Z

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 399
    new-instance v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mKnoxCustomIsProKioskMode:Z

    .line 106
    new-instance v0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$1;-><init>(Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)Ljava/util/List;
    .locals 0

    .line 68
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 125
    new-instance v1, Lcom/android/settings/security/EncryptionStatusPreferenceController;

    const-string v2, "encryption_and_credentials_encryption_status"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/EncryptionStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    new-instance v2, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;

    const-string v3, "sdcard_encrypt_status"

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    new-instance v3, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    .line 134
    new-instance v4, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    .line 136
    new-instance p2, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/security/BiometricsOptionPreferenceController;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v5, Lcom/samsung/android/settings/security/PowerOffLockPreferenceController;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/security/PowerOffLockPreferenceController;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v6, Lcom/samsung/android/settings/security/SamsungPassPreferenceController;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/security/SamsungPassPreferenceController;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v7, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v8, Lcom/samsung/android/settings/security/SecureWifiPrefController;

    invoke-direct {v8, p0, p1}, Lcom/samsung/android/settings/security/SecureWifiPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private removeSecurityMenusFromLDU()V
    .locals 1

    const-string v0, "encryption_and_credentials_encryption_status"

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "sdcard_encrypt_status"

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method private setLinkedDataView()V
    .locals 6

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_7

    .line 274
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 277
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v1, 0x2338

    .line 278
    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 280
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fromScreenLock"

    const/4 v3, 0x1

    .line 281
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSupportMultiPaneLayout(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    .line 284
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    goto :goto_0

    .line 286
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    sget v4, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, ":settings:show_fragment_args"

    .line 288
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 289
    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 291
    :goto_0
    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/4 v1, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 296
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.sm.ACTION_DASHBOARD"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "from_settings"

    .line 297
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 298
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 299
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v2, 0x2339

    .line 301
    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 303
    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 304
    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->config_sec_toplevel_devicecare_package:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "top_level_devicecare"

    .line 305
    iput-object v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 307
    :cond_2
    sget-boolean v2, Lcom/samsung/android/settings/Rune;->SUPPORT_NOTI_CHN_SMART_MANAGER:Z

    if-eqz v2, :cond_3

    .line 308
    sget v2, Lcom/android/settings/R$string;->smart_manager:I

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_1

    .line 310
    :cond_3
    sget v2, Lcom/android/settings/R$string;->app_name_device_care:I

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 317
    :cond_4
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v4, 0x271f

    .line 319
    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v4

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 321
    iput-object v2, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v2, "top_level_privacy"

    .line 322
    iput-object v2, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 323
    sget v2, Lcom/android/settings/R$string;->app_permissions:I

    iput v2, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 325
    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isScreenLockTypeDisabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 327
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isDisabledLockScreenPolicy()Z

    move-result v2

    if-nez v2, :cond_5

    .line 328
    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_5
    if-eqz v1, :cond_6

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 335
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mKnoxCustomIsProKioskMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mUm:Landroid/os/UserManager;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 216
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "security_status_security_patch_level"

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "security_status_find_device"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result p0

    return p0

    :cond_2
    xor-int/lit8 p0, v1, 0x1

    return p0

    .line 221
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BiometricsAndSecuritySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2347

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBiometricsFeature(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 389
    sget p0, Lcom/android/settings/R$xml;->sec_biometrics_and_security_settings:I

    goto :goto_0

    .line 390
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->sec_security_settings:I

    :goto_0
    return p0
.end method

.method protected launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "BiometricsAndSecuritySettings"

    if-nez v0, :cond_0

    const-string p0, "dashboardKey is null for starting to security update"

    .line 233
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v3, "security_status_security_patch_level"

    .line 237
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mKnoxCustomIsProKioskMode:Z

    if-nez v3, :cond_1

    const-string p1, "start to check software update"

    .line 239
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->launchSoftwareUpdateForSecurityUpdateMenu(Landroid/content/Context;)V

    return v4

    :cond_1
    const-string v3, "samsung_pass_app"

    .line 242
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    :try_start_0
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    .line 250
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 165
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 354
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 367
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption"

    .line 368
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-boolean p1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mIsKeeperLaunched:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 371
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mIsKeeperLaunched:Z

    :cond_0
    return v0

    .line 378
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 381
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->setLinkedDataView()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mIsKeeperLaunched:Z

    .line 192
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->removeSecurityMenusFromLDU()V

    :cond_0
    return-void
.end method

.method protected refreshTileState(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "BiometricsAndSecuritySettings"

    const-string p1, "dashboardKey is null for refreshing to tile state"

    .line 257
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "security_status_security_patch_level"

    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isOTAUpgradeAllowed(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 263
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshTileState(Lcom/android/settingslib/drawer/Tile;)Z

    move-result p0

    return p0
.end method
