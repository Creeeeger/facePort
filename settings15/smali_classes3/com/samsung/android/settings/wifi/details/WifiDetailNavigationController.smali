.class public final Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;
.implements Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;
.implements Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;


# instance fields
.field public final mAuthErrorListener:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

.field public mBottomButtonBarView:Landroid/view/View;

.field public mBottomLayout:Landroid/widget/RelativeLayout;

.field public mBottomMode:I

.field public mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public final mContext:Landroid/content/Context;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public final mInManageNetwork:Z

.field public final mInSetupWizardFinished:Z

.field public mIsEphemeral:Z

.field public final mIsMaintenanceMode:Z

.field public mIsQuickShareAvailable:Z

.field public mIsSavedVzwEapAka:Z

.field public final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public final mSAScreenId:Ljava/lang/String;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mWifiInfo:Landroid/net/wifi/WifiInfo;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Landroidx/fragment/app/Fragment;ZLcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsEphemeral:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsSavedVzwEapAka:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v1, "wifi"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mInManageNetwork:Z

    iput-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mSAScreenId:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiUtils;->isSupportQuickShare(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/android/settings/wifi/WifiUtils;->isQuickShareEnabled(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result p3

    const-string p4, "WifiUtils"

    if-nez p3, :cond_0

    const-string p1, "canShare is FALSE"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lcom/android/settings/wifi/WifiUtils;->isSecurityTypeSupportQrCode(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "isSecurityTypeSupportQrCode is FALSE"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsQuickShareAvailable:Z

    invoke-static {p2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mInSetupWizardFinished:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isMaintenanceMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsMaintenanceMode:Z

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mAuthErrorListener:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    return-void
.end method


# virtual methods
.method public final canModifyNetwork()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    const-string p0, "WifiDetailNavigationCtrl"

    const-string v1, "modify is blocked"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final displayBottomNavigation()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsEphemeral:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    :goto_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-boolean v4, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/16 v4, 0x72f

    if-ne v1, v4, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsSavedVzwEapAka:Z

    :cond_1
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsEphemeral:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v1, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsSavedVzwEapAka:Z

    if-nez v5, :cond_19

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_19

    iget-boolean v5, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz v5, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const v6, 0x7f0a06a3

    if-eqz v5, :cond_5

    invoke-virtual {v1, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x7f14111b

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DCM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const v6, 0x7f1434d3    # 1.9700002E38f

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_7
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsMaintenanceMode:Z

    const v6, 0x7f0a0c18

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mInManageNetwork:Z

    if-nez v7, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/android/settings/wifi/WifiUtils;->isSecurityTypeSupportQrCode(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v5, :cond_9

    :cond_8
    invoke-virtual {v1, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiUtils;->isSupportVerifyingForPassword(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v1, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_a
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiUtils;->isSupportQuickShare(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiUtils;->isQuickShareEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v8

    const-string v9, "WifiUtils"

    if-nez v8, :cond_b

    const-string v6, "canShare is FALSE"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    invoke-static {v6, v0}, Lcom/android/settings/wifi/WifiUtils;->isSecurityTypeSupportQrCode(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "isSecurityTypeSupportQrCode is FALSE"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    move v6, v3

    goto :goto_3

    :cond_d
    :goto_2
    move v6, v4

    :goto_3
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsQuickShareAvailable:Z

    if-eqz v6, :cond_e

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mInSetupWizardFinished:Z

    if-eqz v6, :cond_e

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_e

    if-eqz v7, :cond_f

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_4

    :cond_e
    const v5, 0x7f0a0c22

    invoke-virtual {v1, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    :cond_f
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->canModifyNetwork()Z

    move-result v5

    if-nez v5, :cond_11

    :cond_10
    :goto_5
    move v3, v4

    goto :goto_7

    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v6, "WifiDetailNavigationCtrl"

    if-nez v5, :cond_13

    const-string v5, "canForgetNetwork mWifiConfig is null"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz v5, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsSavedVzwEapAka:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_5

    :cond_14
    iget-boolean v0, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-nez v0, :cond_17

    iget-boolean v0, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    if-nez v0, :cond_17

    iget-boolean v0, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz v0, :cond_15

    goto :goto_6

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "canModifyNetwork "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->canModifyNetwork()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_17
    :goto_6
    const-string/jumbo p0, "wifiEntry cannot forget or locked"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_18
    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_9

    :cond_19
    :goto_8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    :goto_9
    return-void
.end method

.method public final forgetNetwork$1()V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "WifiDetailNavigationCtrl"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz v3, :cond_0

    const-string v3, "Instant Mobile Hotspot network"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    check-cast v3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {v3, v0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToRemove(Landroid/net/wifi/WifiConfiguration;)V

    :goto_0
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p0}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/util/Pair;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v7, 0x89

    invoke-virtual {v6, v3, v7, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mSAScreenId:Ljava/lang/String;

    const-string v5, "1028"

    invoke-static {v3, v5}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Exiting the WifiNetworkDetailsPage"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/SettingsActivity;

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final initBottom()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0299

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    return-void
.end method

.method public final launchWifiDppConfiguratorActivity$1$1()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "1050"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "key_setup_wizard"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const-string v2, "key_config"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiQrCodeActivity"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onAuthenticationError()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->initBottom()V

    return-void
.end method

.method public final onDisconnectResult(I)V
    .locals 1

    const-string p0, "WifiDetailNavigationCtrl"

    if-eqz p1, :cond_0

    const-string v0, "Failed to disconnect Wi-Fi network reason="

    invoke-static {p1, v0, p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Succeeded to disconnect Wi-Fi network"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onForgetResult(I)V
    .locals 1

    const-string v0, "WifiDetailNavigationCtrl"

    if-eqz p1, :cond_0

    const-string p1, "Forget Wi-Fi network failed"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    const p1, 0x7f143568

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "Succeeded to forget Wi-Fi network"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setMode(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_4

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0a52

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V

    iput-object v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->displayBottomNavigation()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0a4f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomButtonBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final shareNetwork$1()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiQrCodeUtils;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getQrCodeString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createQrcodeImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/WifiQrCodeUtils;->mQrBmp:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiQrCodeUtils;->mQrBmp:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const-string v6, "WifiQrCode_Utils"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070e75

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    invoke-virtual {v9, v3, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v0, "shareQrCode failed for cache dir is null"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, "wifi_qrcode.png"

    invoke-direct {v6, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const-string v3, "com.android.settings.files"

    invoke-static {v0, v6, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "com.samsung.android.app.sharelive"

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v3, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_3
    const-string v0, "Fail to share - cannot get QR"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiQrCodeUtils;->mIsSuccessQuickShare:Z

    :goto_5
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiQrCodeUtils;->mIsSuccessQuickShare:Z

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x1

    goto :goto_6

    :cond_4
    const-wide/16 v3, 0x0

    :goto_6
    const-string v0, "WIFI_280"

    const-string v6, "1026"

    invoke-static {v3, v4, v0, v6, v5}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiQrCodeUtils;->mIsSuccessQuickShare:Z

    if-nez v0, :cond_5

    goto :goto_7

    :cond_5
    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.sharelive.action.QR_SHARE_WIFI_CONNECT"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "ssid"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_7
    if-eqz v5, :cond_7

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public final update(Z)V
    .locals 1

    const-string/jumbo p0, "update triggered by Validator "

    const-string v0, "WifiDetailNavigationCtrl"

    invoke-static {p0, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
