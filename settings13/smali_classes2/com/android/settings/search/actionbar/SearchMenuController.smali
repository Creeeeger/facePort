.class public Lcom/android/settings/search/actionbar/SearchMenuController;
.super Ljava/lang/Object;
.source "SearchMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# instance fields
.field private final mHost:Landroidx/fragment/app/Fragment;

.field private final mIsMultiPaneSupported:Z

.field private mKnoxCustomIsProKioskMode:Z

.field private final mPageId:I

.field private mSearchItem:Landroid/view/MenuItem;


# direct methods
.method public static synthetic $r8$lambda$D5LJOdTWHm3qzxrcgZE9MNDI7Rg(Lcom/android/settings/search/actionbar/SearchMenuController;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/actionbar/SearchMenuController;->lambda$new$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQIPPUCrck2DfXuBaQt-WbCNCJQ(Lcom/android/settings/search/actionbar/SearchMenuController;Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/actionbar/SearchMenuController;->lambda$onCreateOptionsMenu$1(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mKnoxCustomIsProKioskMode:Z

    .line 83
    iput-object p1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    .line 84
    iput p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mPageId:I

    .line 86
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mIsMultiPaneSupported:Z

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    new-instance p2, Lcom/android/settings/search/actionbar/SearchMenuController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/search/actionbar/SearchMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/search/actionbar/SearchMenuController;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnConfigurationChangedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;)V

    :cond_0
    return-void
.end method

.method public static init(Lcom/android/settings/core/InstrumentedFragment;)V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    .line 79
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    .line 74
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/res/Configuration;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->updateSearchItemVisibility()V

    return-void
.end method

.method private synthetic lambda$onCreateOptionsMenu$1(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 4

    .line 160
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 161
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mPageId:I

    .line 162
    invoke-interface {p2, p1, v0}, Lcom/android/settings/search/SearchFeatureProvider;->buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p2

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mKnoxCustomIsProKioskMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 174
    :cond_1
    iget v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mPageId:I

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2

    const/16 v3, 0xc1c

    .line 175
    invoke-static {v0, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x3e8

    .line 177
    invoke-static {v0, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 181
    :goto_0
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v3, 0xe2

    new-array v1, v1, [Landroid/util/Pair;

    .line 182
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mIsMultiPaneSupported:Z

    const/16 v1, 0x1f5

    if-eqz v0, :cond_3

    instance-of p1, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz p1, :cond_3

    const/high16 p1, 0x4000000

    .line 185
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    iget-object p0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p2, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return v2

    .line 191
    :cond_3
    iget-object p0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2
.end method

.method private updateSearchItemVisibility()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 206
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 98
    iget-object p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 99
    sget v0, Lcom/android/settings/R$string;->config_settingsintelligence_package_name:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMaximumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 114
    :cond_1
    invoke-static {p2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 115
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p2, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_4

    return-void

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string/jumbo v2, "need_search_icon_in_action_bar"

    const/4 v3, 0x0

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0xb

    .line 134
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    return-void

    .line 139
    :cond_6
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 141
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mKnoxCustomIsProKioskMode:Z

    .line 143
    :cond_7
    iget-object v2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "Settings_Search"

    const-string v5, "hide"

    invoke-static {v2, v0, v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mKnoxCustomIsProKioskMode:Z

    if-eqz v0, :cond_8

    goto :goto_0

    .line 149
    :cond_8
    sget v0, Lcom/android/settings/R$string;->search_menu:I

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 152
    sget v0, Lcom/android/settings/R$drawable;->sec_search_magnifier:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 157
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 159
    new-instance v0, Lcom/android/settings/search/actionbar/SearchMenuController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/search/actionbar/SearchMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/search/actionbar/SearchMenuController;Landroid/app/Activity;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 196
    iget-boolean p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mIsMultiPaneSupported:Z

    if-eqz p2, :cond_9

    .line 197
    iput-object p1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mSearchItem:Landroid/view/MenuItem;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->updateSearchItemVisibility()V

    :cond_9
    :goto_0
    return-void
.end method
