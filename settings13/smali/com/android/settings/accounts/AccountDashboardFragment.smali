.class public Lcom/android/settings/accounts/AccountDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccountDashboardFragment.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mAccountPreferenceController:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method static bridge synthetic -$$Nest$smbuildAccountPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountDashboardFragment;->buildAccountPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 193
    new-instance v0, Lcom/android/settings/accounts/AccountDashboardFragment$1;

    sget v1, Lcom/android/settings/R$xml;->accounts_dashboard_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountDashboardFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/accounts/AccountDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 248
    new-instance v0, Lcom/android/settings/accounts/AccountDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/AccountDashboardFragment;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 282
    new-instance v0, Lcom/android/settings/accounts/AccountDashboardFragment$3;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountDashboardFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/AccountDashboardFragment;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildAccountPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 164
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance p2, Lcom/android/settings/users/AutoSyncDataPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 171
    :cond_1
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p2, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 178
    :cond_2
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance p2, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    if-eqz p1, :cond_3

    .line 183
    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 185
    :cond_3
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {p1, p0, v1, v0}, Lcom/android/settings/accounts/AccountDashboardFragment;->buildAccountPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 0

    .line 120
    sget p0, Lcom/android/settings/R$string;->help_url_user_and_account_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccountDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 115
    sget p0, Lcom/android/settings/R$xml;->accounts_dashboard_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 127
    const-class p1, Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/AccountPreferenceController;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mAccountPreferenceController:Lcom/android/settings/accounts/AccountPreferenceController;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 77
    iget-object p0, p0, Lcom/android/settings/accounts/AccountDashboardFragment;->mAccountPreferenceController:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAddAccountButtonState()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 93
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 95
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected shouldSkipForInitialSUW()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
