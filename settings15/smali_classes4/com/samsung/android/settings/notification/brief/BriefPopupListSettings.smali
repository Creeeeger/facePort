.class public Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public isSearch:Z

.field public mAllAppsEnabled:Z

.field public mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

.field public mAppAppsPreferenceTitle:Ljava/lang/String;

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public mAppList:Ljava/util/ArrayList;

.field public mAppListPref:Landroidx/preference/PreferenceCategory;

.field public final mAppNameComparator:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$2;

.field public mAppTempList:Ljava/util/ArrayList;

.field public mBackend:Lcom/android/settings/notification/NotificationBackend;

.field public mInstalledAppCountInWhiteList:I

.field public mIsDirty:Z

.field public mIsToggledByAllSwitch:Z

.field public final mItemPrefList:Ljava/util/ArrayList;

.field public mOptionsMenu:Landroid/view/Menu;

.field public final mPreferenceChange:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;

.field public mSearchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$2;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppNameComparator:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$2;

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mPreferenceChange:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;

    return-void
.end method


# virtual methods
.method public final fillInAppList(Ljava/util/ArrayList;)V
    .locals 13

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppNameComparator:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$2;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppList:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    iget v7, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mInstalledAppCountInWhiteList:I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    move-object v8, v0

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_2

    new-instance v11, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-direct {v11, v8, v9}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;-><init>(Landroid/content/Context;I)V

    iput-object v11, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    new-instance v12, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    const v0, 0x7f140830

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllAppsBtn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v12

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    iput-object v12, v11, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    iput-boolean v10, v0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    iput-boolean v9, v0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mPreferenceChange:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_2
    move v0, v9

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    if-nez v1, :cond_3

    const-string v1, "BriefPopupListSettings"

    const-string/jumbo v2, "updateAppList item is null.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-direct {v2, v8}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;-><init>(Landroid/content/Context;)V

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_4

    iput-boolean v10, v2, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    iput-boolean v9, v2, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    if-ne v0, v3, :cond_5

    iput-boolean v9, v2, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    :cond_5
    :goto_1
    iget-object v3, v1, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v1, v2, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->isSelected:Z

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mPreferenceChange:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BriefPopupListSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17006a

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsDirty:Z

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mInstalledAppCountInWhiteList:I

    const-string v0, "brief_popup_list_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    const v0, 0x7f140830

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V

    new-array v1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V

    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0d28

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    const v0, 0x7f142083

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    iput-object p0, p2, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    const v0, 0x7f0a0d36

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f06067c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return v1
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return v1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->updateEdgeLightingList()V

    :cond_0
    return-void
.end method

.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->appName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "\u200b"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized updateEdgeLightingList()V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    iget-object v5, v4, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-boolean v6, v5, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->isSelected:Z

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "BriefPopupListSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " will be stored"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v6, v4, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-object v6, v6, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    iget-object v4, v4, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-boolean v4, v4, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->isSelected:Z

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v5, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v5, v6, v7, v4}, Landroid/app/INotificationManager;->setAllowEdgeLighting(Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "NotificationBackend"

    const-string v6, "Error calling NoMan"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method
