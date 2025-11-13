.class public Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkDetailsFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;


# instance fields
.field private final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field private mInManageNetwork:Z

.field private mInfoMenu:Landroid/view/MenuItem;

.field private mIsSetupwizardFinish:Z

.field private mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private final mSAScreenId:Ljava/lang/String;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

.field private mWifiDetailPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;


# direct methods
.method public static synthetic $r8$lambda$X1MvKKk9bpdZZKQDfKzNvLf5zWg(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j1yTFEur8friM65YO4Vr9tMtCjE(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->lambda$new$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsSetupwizardFinish:Z

    const-string v0, "WIFI_106"

    .line 112
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mSAScreenId:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    return-void
.end method

.method private isWeakSecurity(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    .line 397
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 399
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->hasDefaultNetworkName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static synthetic lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 116
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    if-eqz v0, :cond_0

    .line 117
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreference()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setupActionBarMenu(Landroid/view/Menu;)V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->isWeakSecurity(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    sget v0, Lcom/android/settings/R$string;->information_label:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInfoMenu:Landroid/view/MenuItem;

    .line 391
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 392
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInfoMenu:Landroid/view/MenuItem;

    sget p1, Lcom/android/settings/R$drawable;->sec_wifi_detail_info:I

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setupForceWifiEntry(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 346
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 347
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private setupNetworksDetailTracker()V
    .locals 12

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 320
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNetworkDetailsFrg{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 323
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 324
    new-instance v6, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$2;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;Ljava/time/ZoneId;)V

    .line 331
    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v1

    .line 334
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v4, Landroid/os/Handler;

    .line 336
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 337
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v7, 0x3a98

    const-wide/16 v9, 0x2710

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v11, "key_chosen_wifientry_key"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 333
    invoke-interface/range {v1 .. v11}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    return-void
.end method

.method private showWarningDialog(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 403
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 404
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->showWarningDialog()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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

    const-string v0, "wifi"

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/net/wifi/WifiManager;

    const-string v0, "sem_wifi"

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v0, "connectivity"

    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->setupNetworksDetailTracker()V

    .line 252
    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->setupForceWifiEntry(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    new-instance v4, Landroid/os/Handler;

    .line 259
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    const-string v9, "WIFI_106"

    move-object v1, v11

    move-object v2, p1

    move-object v3, p0

    move-object v6, v10

    .line 254
    invoke-static/range {v0 .. v9}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/wifi/SemWifiManager;ZLjava/lang/String;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 265
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v5, "WIFI_106"

    move-object v0, v7

    move-object v1, p1

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v7, "WIFI_106"

    invoke-direct {v0, v1, v11, p1, v7}, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;

    invoke-direct {v0, p1, v7}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->setOnWifiExpandListener(Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;)V

    .line 277
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    if-nez v0, :cond_0

    .line 280
    new-instance v8, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v6, "WIFI_106"

    move-object v0, v8

    move-object v2, v11

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v8, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setNetworkConfigExpandListener(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$NetworkConfigChangeListener;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {v0, p1, v1, p0, v7}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {v0, p1, v1, p0, v7}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v8, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    .line 306
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string v7, "WIFI_106"

    move-object v0, v8

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Landroidx/fragment/app/Fragment;ZLcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    return-object v0
.end method

.method protected displayPreferenceControllers()V
    .locals 3

    .line 362
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 363
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 368
    instance-of v2, v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    instance-of v2, v1, Lcom/samsung/android/settings/wifi/details/WifiQuickSharePreferenceController;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getBottomMode()I
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->getBottomMode()I

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiNetworkDetailsFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 241
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$xml;->sec_wifi_network_details_manage_network_fragment:I

    goto :goto_0

    .line 242
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_network_details_fragment:I

    :goto_0
    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsSetupwizardFinish:Z

    .line 172
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    if-eqz v0, :cond_1

    const-string v1, "manage_network"

    .line 175
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    const-string v1, "key_chosen_wifientry_config"

    .line 176
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 179
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "wifi_tips_notification"

    .line 180
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "WIFI_106"

    const-string v1, "1029"

    .line 181
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onChangeBottomMode(I)V
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 200
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsSetupwizardFinish:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 205
    invoke-virtual {p2, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 206
    invoke-virtual {p2, p0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->setupActionBarMenu(Landroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 136
    instance-of p2, p0, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz p2, :cond_0

    .line 137
    move-object p2, p0

    check-cast p2, Lcom/android/settings/core/SettingsBaseActivity;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar(Z)V

    :cond_0
    const/4 p2, 0x0

    .line 139
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 225
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->showWarningDialog(Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 p0, 0x1

    return p0

    .line 218
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "WIFI_106"

    .line 190
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->getBottomMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->initBottom()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->init(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 146
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 151
    new-instance v0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    .line 152
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 156
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 157
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 158
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public refreshPreferences()V
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->displayPreferenceControllers()V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->getBottomMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 357
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->displayBottomNavigation()V

    :cond_0
    return-void
.end method
