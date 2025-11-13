.class public Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;
.super Ljava/lang/Object;
.source "WifiDetailNavigationController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;
.implements Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;


# static fields
.field private static final CSC_SUPPORT_EAP_AKA:Z

.field private static final mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field private mBottomButtonBarView:Landroid/view/View;

.field private mBottomLayout:Landroid/widget/RelativeLayout;

.field private mBottomMode:I

.field private mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mInManageNetwork:Z

.field private mIsEphemeral:Z

.field private mIsSavedVzwEapAka:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mSAScreenId:Ljava/lang/String;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$8IwYm1LYaOOE2vHakvll2svKkBs(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->lambda$showPasspointWarningDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9VTZwjCwwXAtN_bWDxWCGHDrcug(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->lambda$showPasspointWarningDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mforgetNetwork(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->forgetNetwork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchWifiDppConfiguratorActivity(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->launchWifiDppConfiguratorActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPasspointWarningDialog(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->showPasspointWarningDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 74
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getNotificationStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->CSC_SUPPORT_EAP_AKA:Z

    .line 76
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Landroidx/fragment/app/Fragment;ZLcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsEphemeral:Z

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsSavedVzwEapAka:Z

    .line 92
    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    .line 103
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 105
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string p1, "wifi"

    .line 106
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    iput-object p6, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 108
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 109
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 110
    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mInManageNetwork:Z

    .line 111
    iput-object p7, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method private canForgetNetwork()Z
    .locals 5

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->canModifyNetwork()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    const-string v3, "WifiDetailNavigationCtrl"

    if-nez v0, :cond_2

    const-string v0, "canForgetNetwork mWifiConfig is null"

    .line 276
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsOpenRoamingNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 284
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsSavedVzwEapAka:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_5

    .line 289
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 290
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsLocked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 291
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsOpenRoamingNetwork()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string p0, "wifiEntry cannot forget or locked"

    .line 292
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 297
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canModifyNetwork "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->canModifyNetwork()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    :goto_0
    return v1
.end method

.method private exitActivity()V
    .locals 2

    const-string v0, "WifiDetailNavigationCtrl"

    const-string v1, "Exiting the WifiNetworkDetailsPage"

    .line 404
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    .line 410
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private forgetNetwork()V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToRemove(Landroid/net/wifi/WifiConfiguration;)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 361
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x89

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    .line 360
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "1028"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->exitActivity()V

    return-void
.end method

.method private initBottomBarButton()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_button_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomButtonBarView:Landroid/view/View;

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initBottomNavigation()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 180
    sget v1, Lcom/android/settings/R$layout;->sec_wifi_detail_bottom_layout:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 202
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isSetupWizard()Z
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$showPasspointWarningDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->forgetNetwork()V

    return-void
.end method

.method private static synthetic lambda$showPasspointWarningDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 341
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private launchWifiDppConfiguratorActivity()V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "1050"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 324
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->isSetupWizard()Z

    move-result v2

    const-string v3, "key_setup_wizard"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const-string v2, "key_config"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 327
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiQrCodeActivity"

    .line 328
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyModeChanged()V
    .locals 2

    .line 160
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->removeBottomView()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->initBottomNavigation()V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->displayBottomNavigation()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->initBottomBarButton()V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeBottomView()V
    .locals 1

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 172
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showPasspointWarningDialog()V
    .locals 4

    .line 334
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    sget v1, Lcom/android/settings/R$string;->forget_passpoint_dialog_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_forget_dialog_title:I

    .line 336
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_forget:I

    new-instance v3, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V

    .line 337
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$$ExternalSyntheticLambda1;-><init>()V

    .line 340
    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 343
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateNetworkInfo()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsEphemeral:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 258
    sget-boolean v1, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->CSC_SUPPORT_EAP_AKA:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 260
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/16 v1, 0x72f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsSavedVzwEapAka:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public canModifyNetwork()Z
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 308
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 314
    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p0, "WifiDetailNavigationCtrl"

    const-string v0, "modify is blocked"

    .line 309
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public displayBottomNavigation()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->updateNetworkInfo()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsEphemeral:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->refreshBottomNavigation()V

    return-void
.end method

.method public getBottomMode()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    return p0
.end method

.method public initBottom()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    return-void
.end method

.method public onDisconnectResult(I)V
    .locals 2

    const-string p0, "WifiDetailNavigationCtrl"

    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to disconnect Wi-Fi network reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Succeeded to disconnect Wi-Fi network"

    .line 374
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onForgetResult(I)V
    .locals 1

    const-string v0, "WifiDetailNavigationCtrl"

    if-eqz p1, :cond_0

    const-string p1, "Forget Wi-Fi network failed"

    .line 384
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 388
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_failed_forget_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 390
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "Succeeded to forget Wi-Fi network"

    .line 393
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshBottomNavigation()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 221
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsSavedVzwEapAka:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsOpenRoamingNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    sget v1, Lcom/android/settings/R$id;->forget_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 229
    :cond_2
    sget v1, Lcom/android/settings/R$id;->forget_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 231
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    sget v2, Lcom/android/settings/R$string;->handler_disconnect:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 233
    :cond_3
    sget-object v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->DCM:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v3, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v2, v3, :cond_4

    .line 234
    sget v2, Lcom/android/settings/R$string;->wifi_dcm_forget:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 238
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mInManageNetwork:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiUtils;->isSecurityTypeSupportQrCode(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 239
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v1

    if-nez v1, :cond_6

    .line 241
    :cond_5
    sget v1, Lcom/android/settings/R$id;->qrcode_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->canForgetNetwork()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void

    .line 222
    :cond_7
    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 149
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 152
    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->notifyModeChanged()V

    return-void
.end method

.method public update(Z)V
    .locals 1

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update triggered by Validator "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDetailNavigationCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
