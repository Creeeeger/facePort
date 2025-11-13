.class public Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkConnectFragment.java"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBssid:Ljava/lang/String;

.field private final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableReason:I

.field private mHelper:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

.field private mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field private mIsRetryDialog:Z

.field private mIsSetupwizardFinish:Z

.field private mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mWifiConnectPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;


# direct methods
.method public static synthetic $r8$lambda$oR6FxRfkx-PLYd4fVDwKPk1ryPg(Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vXYdryOr6qVcTs4YQ16Cm-BLwAg(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mIsSetupwizardFinish:Z

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mIsRetryDialog:Z

    .line 90
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 92
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePreference(Z)V

    goto :goto_0

    .line 94
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    if-eqz v0, :cond_1

    .line 95
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->updatePreference()V

    goto :goto_0

    .line 96
    :cond_1
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    if-eqz v0, :cond_2

    .line 97
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreference()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setupNetworksDetailTracker()V
    .locals 13

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 273
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetworkConnectFrg{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 276
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 277
    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$2;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;Ljava/time/ZoneId;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 287
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 288
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v5, Landroid/os/Handler;

    .line 289
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 290
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "key_connect_wifientry_key"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 284
    invoke-static/range {v1 .. v12}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 11
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

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->setupNetworksDetailTracker()V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 221
    new-instance v10, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mIsRetryDialog:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v9, "WIFI_107"

    move-object v1, v10

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;ZLandroidx/fragment/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiConnectPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    .line 224
    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mDisableReason:I

    invoke-virtual {v10, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setDisableReason(I)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiConnectPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setBssid(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiConnectPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v6, "WIFI_107"

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;

    const-string v8, "WIFI_107"

    invoke-direct {v1, p1, v8}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->setOnWifiExpandListener(Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;)V

    .line 234
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    .line 237
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Landroidx/lifecycle/Lifecycle;)V

    .line 238
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiConnectPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getEapListener()Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->registerListener(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 242
    new-instance v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v7, "WIFI_107"

    move-object v1, v9

    move-object v2, v0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    invoke-direct {v2, p1, v0, v8}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-direct {v2, p1, v0, p0, v8}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;

    invoke-direct {v1, p1, v0, p0, v8}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance p1, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mHelper:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    .line 259
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiConnectPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p1, v9, v1}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->addValidator(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;)V

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 263
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launch ConnectFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiNetworkConnectFrg"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiNetworkConnectFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 142
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_add_network_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DialogForRetry"

    .line 111
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mIsRetryDialog:Z

    const-string v2, "disableReason"

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mDisableReason:I

    const-string v2, "bssid"

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mBssid:Ljava/lang/String;

    .line 116
    :cond_0
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "sem_wifi"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mIsSetupwizardFinish:Z

    .line 119
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 210
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mIsSetupwizardFinish:Z

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 211
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 212
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 157
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "WIFI_107"

    .line 158
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->init(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 172
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 177
    new-instance v0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    .line 178
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 183
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 184
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 185
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result p2

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_wifi_toolbar_inset_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiConnectPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method
