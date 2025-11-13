.class public Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkAddFragment.java"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

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

.field private final mSAScreenId:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;


# direct methods
.method public static synthetic $r8$lambda$brTuT5uUn5B8gKDonXVBYrHw4Vs(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$keeHnGw95KS3Ynk3owQZaax9eW0(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "WIFI_105"

    .line 35
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mSAScreenId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mIsSetupwizardFinish:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 46
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePreference(Z)V

    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    if-eqz v0, :cond_1

    .line 49
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->updatePreference()V

    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    if-eqz v0, :cond_2

    .line 51
    check-cast p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreference()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 17
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

    .line 142
    new-instance v11, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 144
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/wifi/WifiManager;

    iget-object v7, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v8, "WIFI_105"

    move-object v0, v11

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;ZLandroidx/fragment/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    .line 145
    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;

    const-string v8, "WIFI_105"

    invoke-direct {v7, v10, v8}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->setOnWifiExpandListener(Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;)V

    .line 148
    new-instance v12, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    iget-object v4, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Landroidx/lifecycle/Lifecycle;)V

    .line 150
    invoke-virtual {v12}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->getEapListener()Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->registerListener(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;)V

    .line 151
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 152
    new-instance v13, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    iget-object v5, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const/4 v1, 0x0

    const-string v6, "WIFI_105"

    move-object v0, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    .line 154
    new-instance v6, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;

    const/4 v14, 0x0

    invoke-direct {v6, v10, v14, v9, v8}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 157
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v15, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;

    iget-object v4, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const-string v16, "WIFI_105"

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v3, p0

    move-object v14, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2, v8}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-direct {v1, v10, v2, v9, v8}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;-><init>()V

    iput-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mHelper:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    .line 167
    invoke-virtual {v0, v13, v11}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->addValidator(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;)V

    .line 169
    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiAddNetworkFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 73
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_add_network_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 80
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mIsSetupwizardFinish:Z

    .line 82
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 134
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mIsSetupwizardFinish:Z

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 135
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 136
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "WIFI_105"

    .line 122
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

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
    .locals 3

    .line 95
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance v0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    .line 101
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 106
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
