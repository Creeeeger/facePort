.class public Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RecentLocationAccessSeeAllFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mController:Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

.field private mHideSystemMenu:Landroid/view/MenuItem;

.field private mShowSystem:Z

.field private mShowSystemMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 150
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->location_recent_access_see_all:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    return-void
.end method

.method private updateMenu()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecentLocAccessSeeAll"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x52d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 85
    sget p0, Lcom/android/settings/R$xml;->location_recent_access_see_all:I

    return p0
.end method

.method public isPreferenceAnimationAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 69
    const-class p1, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mController:Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    .line 70
    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "privacy"

    const-string v0, "location_indicators_small_enabled"

    const/4 v1, 0x0

    .line 76
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "locationShowSystemOps"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    move v1, v0

    .line 80
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 119
    sget p2, Lcom/android/settings/R$string;->menu_show_system:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    .line 121
    sget p2, Lcom/android/settings/R$string;->menu_hide_system:I

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    .line 123
    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->updateMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 107
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 98
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 100
    iget-boolean v1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    const-string v2, "locationShowSystemOps"

    .line 99
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->updateMenu()V

    .line 102
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mController:Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    if-eqz p1, :cond_2

    .line 103
    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->setShowSystem(Z)V

    :cond_2
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 136
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 138
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 141
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 143
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
