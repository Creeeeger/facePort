.class public Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public isSearch:Z

.field public mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

.field public mAppAppsPreferenceTitle:Ljava/lang/String;

.field public mAppList:Ljava/util/ArrayList;

.field public mAppListPref:Landroidx/preference/PreferenceCategory;

.field public final mAppNameComparator:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$1;

.field public mAppTempList:Ljava/util/ArrayList;

.field public mBackend:Lcom/android/settings/notification/NotificationBackend;

.field public mIsDirty:Z

.field public mIsToggledByAllSwitch:Z

.field public final mItemPrefList:Ljava/util/ArrayList;

.field public final mPreferenceChange:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;

.field public mSearchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$1;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppNameComparator:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$1;

    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;-><init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mPreferenceChange:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;

    return-void
.end method


# virtual methods
.method public final fillInAppList(Ljava/util/ArrayList;)V
    .locals 11

    const-string v0, "NotificationReminderAppListSettings"

    const-string v1, "fillInAppList called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppList:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppNameComparator:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$1;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppList:Ljava/util/ArrayList;

    sget-boolean v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    sget v2, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    const-string/jumbo v3, "updateAppList called"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    new-instance v4, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-direct {v4, v3, v5}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    new-instance v7, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    const v8, 0x7f140830

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "AllAppsBtn"

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v1}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    iput-object v7, v4, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    iput-boolean v6, v4, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowDrawerDivider:Z

    iput-boolean v5, v4, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowLineDivider:Z

    iget-object v7, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {v4, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mPreferenceChange:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_2
    move v1, v5

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    if-nez v4, :cond_3

    const-string/jumbo v4, "updateAppList item is null.."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v7, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-direct {v7, v3}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;-><init>(Landroid/content/Context;)V

    add-int/lit8 v8, v2, -0x1

    if-ne v1, v8, :cond_4

    iput-boolean v6, v7, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowDrawerDivider:Z

    iput-boolean v5, v7, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowLineDivider:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    if-ne v1, v8, :cond_5

    iput-boolean v5, v7, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowLineDivider:Z

    :cond_5
    :goto_1
    iget-object v8, v4, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v4, v7, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-boolean v4, v4, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    invoke-virtual {v7, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mPreferenceChange:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 1

    const-string p0, "getLogTag called"

    const-string v0, "NotificationReminderAppListSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x8cce

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700fd

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "NotificationReminderAppListSettings"

    const-string/jumbo v0, "onActivityCreated called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NotificationReminderAppListSettings"

    const-string/jumbo v0, "onCreate called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsDirty:Z

    sput p1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    const-string/jumbo v0, "notification_reminder_list_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    const v0, 0x7f141e90

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;-><init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V

    new-array p0, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
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

    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    const v0, 0x7f142083

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

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
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    const-string v0, "NotificationReminderAppListSettings"

    const-string/jumbo v1, "onDestroyView called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return p1
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "NotificationReminderAppListSettings"

    const-string/jumbo v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->updateNotificationReminderList()V

    :cond_0
    return-void
.end method

.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
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

    if-nez v4, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string p0, "NotificationReminderAppListSettings"

    const-string/jumbo v0, "onResume called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized updateNotificationReminderList()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "NotificationReminderAppListSettings"

    const-string/jumbo v1, "updateNotificationReminderList called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    iget-object v3, v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-boolean v4, v3, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "NotificationReminderAppListSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " will be stored"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-object v4, v4, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-object v6, v6, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->packageName:Ljava/lang/String;

    sget v7, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-boolean v2, v2, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v3, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/INotificationManager;->setReminderEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_5
    const-string v3, "NotificationBackend"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notification_reminder_app_list"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method
