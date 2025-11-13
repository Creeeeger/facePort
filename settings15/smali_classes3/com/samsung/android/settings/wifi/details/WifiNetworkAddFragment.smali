.class public Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final mControllers:Ljava/util/List;

.field public mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field public mIsSetupwizardFinish:Z

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mIsSetupwizardFinish:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    new-instance v11, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    const-class v0, Landroid/net/wifi/WifiManager;

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

    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v5, "WIFI_105"

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;

    iput-object v0, v7, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    new-instance v8, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    iget-object v4, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iget-object v0, v8, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;

    iput-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    new-instance v12, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    iget-object v5, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v6, "WIFI_105"

    const/4 v1, 0x0

    move-object v0, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;

    const/4 v13, 0x0

    const-string v14, "WIFI_105"

    invoke-direct {v6, v10, v13, v9, v14}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    new-instance v15, Lcom/samsung/android/settings/wifi/details/WifiDhcpNameSharingPreferenceController;

    iget-object v4, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v5, "WIFI_105"

    const/4 v2, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiDhcpNameSharingPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;

    iget-object v3, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v16, "WIFI_105"

    move-object v0, v4

    move-object/from16 v17, v3

    move-object/from16 v3, p0

    move-object v13, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    move-object/from16 v5, v17

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2, v14}, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-direct {v1, v10, v2, v9, v14}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;-><init>()V

    invoke-virtual {v0, v12, v11}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->addValidator(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;)V

    iget-object v0, v9, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiAddNetworkFrg"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17020e

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

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

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mIsSetupwizardFinish:Z

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    :cond_0
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "WIFI_105"

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

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

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
