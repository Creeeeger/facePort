.class public Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkModifyFragment.java"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCancelButton:Landroid/widget/Button;

.field private final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mHelper:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

.field private mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field private mIsSetupwizardFinish:Z

.field private mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private mSaveButton:Landroid/widget/Button;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;


# direct methods
.method public static synthetic $r8$lambda$7egGA-IgoBilN1eTDOZykCN6wzg(Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mPrbS3BQHS6SsjuIUE2Q_7jKS7k(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mIsSetupwizardFinish:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    .line 100
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    return-void
.end method

.method private initBottomButtonBar()V
    .locals 5

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 234
    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 236
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->sec_wifi_button_bar:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 238
    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 240
    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mCancelButton:Landroid/widget/Button;

    .line 241
    sget v1, Lcom/android/settings/R$id;->save_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mSaveButton:Landroid/widget/Button;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 102
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    if-eqz v0, :cond_0

    .line 103
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePreference(Z)V

    goto :goto_0

    .line 104
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    if-eqz v0, :cond_1

    .line 105
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->updatePreference()V

    goto :goto_0

    .line 106
    :cond_1
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    if-eqz v0, :cond_2

    .line 107
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreference()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setupNetworksDetailTracker()V
    .locals 13

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 272
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetworkModifyFrg{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
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

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 275
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 276
    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;Ljava/time/ZoneId;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 286
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 287
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v5, Landroid/os/Handler;

    .line 288
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 289
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "key_modify_wifientry_key"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 283
    invoke-static/range {v1 .. v12}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 18
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

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->setupNetworksDetailTracker()V

    .line 174
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v11

    const-string v0, "wifi"

    .line 175
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 177
    new-instance v13, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 179
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/wifi/WifiManager;

    iget-object v7, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v8, "WIFI_110"

    move-object v0, v13

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    .line 180
    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;

    const-string v8, "WIFI_110"

    invoke-direct {v7, v10, v8}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->setOnWifiExpandListener(Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;)V

    .line 183
    new-instance v14, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    iget-object v4, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Landroidx/lifecycle/Lifecycle;)V

    .line 185
    invoke-virtual {v14}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getEapListener()Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->registerListener(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;)V

    .line 186
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 187
    new-instance v15, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    iget-object v5, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v6, "WIFI_110"

    move-object v0, v15

    move-object v1, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    .line 189
    new-instance v6, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;

    invoke-direct {v6, v10, v11, v9, v8}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 192
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v5, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;

    const-string v16, "WIFI_110"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, p0

    move-object/from16 v17, v13

    move-object v13, v4

    move-object v4, v12

    move-object v12, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-direct {v1, v10, v11, v9, v8}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;-><init>()V

    iput-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mHelper:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    move-object/from16 v1, v17

    .line 202
    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->addValidator(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;)V

    .line 204
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    return-object v0
.end method

.method protected displayPreferenceControllers()V
    .locals 3

    .line 254
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 255
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 258
    instance-of v2, v1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiNetworkModifyFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 219
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_network_modify_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 119
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mIsSetupwizardFinish:Z

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 224
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 226
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mIsSetupwizardFinish:Z

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 227
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 228
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->initBottomButtonBar()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 132
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "WIFI_110"

    .line 133
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_wifi_toolbar_inset_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->init(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 159
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 164
    new-instance p1, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    .line 165
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p2, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    .line 166
    invoke-virtual {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 167
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public refreshPreferences()V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;->displayPreferenceControllers()V

    return-void
.end method
