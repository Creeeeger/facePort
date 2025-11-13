.class public Lcom/android/settings/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UnrestrictedDataAccess.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mShowSortSelected:Z

.field private mShowSystem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 234
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->unrestricted_data_access_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initData(I)V
    .locals 2

    .line 108
    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    packed-switch p1, :pswitch_data_0

    const-string p0, "UnrestrictedDataAccess"

    const-string p1, "initData: wrong mode code"

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_0

    .line 123
    :cond_0
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setSort(Z)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

    goto :goto_2

    .line 117
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setSort(Z)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1bc1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_2

    .line 110
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 111
    :cond_1
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getMetricsCategory()I

    move-result p1

    const/16 v1, 0x1bc0

    invoke-static {p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 207
    sget p0, Lcom/android/settings/R$string;->help_url_unrestricted_data_access:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UnrestrictedDataAccess"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1bbe

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 225
    sget p0, Lcom/android/settings/R$xml;->unrestricted_data_access_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 198
    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 199
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_0

    .line 200
    :cond_0
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "show_system"

    .line 75
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_1

    const-string/jumbo v2, "show_sorted"

    .line 78
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    .line 81
    const-class p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setParentFragment(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 83
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v0, :cond_2

    const/16 p1, 0x2d

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->initData(I)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/16 p1, 0x2b

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->initData(I)V

    goto :goto_2

    .line 87
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x2c

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->initData(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->menu_hide_system:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->menu_show_system:I

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x2b

    .line 95
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x2c

    .line 100
    iget-boolean v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/R$string;->sort_order_alpha:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/android/settings/R$string;->menu_show_sorted:I

    .line 99
    :goto_1
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 230
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 231
    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;

    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->release()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 137
    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_0

    goto :goto_3

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v1, :cond_1

    .line 154
    sget v1, Lcom/android/settings/R$string;->sort_order_alpha:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/settings/R$string;->menu_show_sorted:I

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 155
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->initData(I)V

    goto :goto_3

    .line 139
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v1, :cond_3

    .line 140
    sget v1, Lcom/android/settings/R$string;->menu_hide_system:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/android/settings/R$string;->menu_show_system:I

    :goto_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 142
    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_2

    .line 143
    :cond_4
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_2
    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

    .line 159
    :goto_3
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    const-string/jumbo v1, "show_system"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    iget-boolean p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    const-string/jumbo v0, "show_sorted"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 174
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 182
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 184
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 187
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->unrestricted_app_title_chn:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->unrestricted_data_saver:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    return-void
.end method
