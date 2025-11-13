.class public Lcom/android/settings/notification/zen/ZenAccessSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "ZenAccessSettings.java"

# interfaces
.implements Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isSearch:Z

.field mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNoMan:Landroid/app/NotificationManager;

.field private mPkgMan:Landroid/content/pm/PackageManager;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public static synthetic $r8$lambda$0QejmRTzLdy8gY_tw6wY8UqUCqw(Lcom/android/settings/notification/zen/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenAccessSettings;->lambda$reloadList$0(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 298
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->zen_access_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    const-string v0, "ZenAccessSettings"

    .line 63
    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->apps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->isSearch:Z

    return-void
.end method

.method private filterAppList(Ljava/lang/String;)V
    .locals 4

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->isSearch:Z

    .line 135
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mAppTempList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->isSearch:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 141
    invoke-direct {p0, v2, p1}, Lcom/android/settings/notification/zen/ZenAccessSettings;->isMatchedEntries(Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object p1, v0

    .line 149
    :goto_1
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mAppTempList:Ljava/util/ArrayList;

    .line 150
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method private getPreferenceSummary(Ljava/lang/String;)I
    .locals 0

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 294
    sget p0, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_0

    .line 295
    :cond_0
    sget p0, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    :goto_0
    return p0
.end method

.method private isMatchedEntries(Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z
    .locals 4

    .line 154
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 157
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "\u200b"

    const-string v3, ""

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$reloadList$0(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 270
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string p4, "dialog"

    if-eqz p3, :cond_0

    .line 272
    new-instance p3, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;-><init>()V

    .line 273
    invoke-virtual {p3, p1, p2, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    move-result-object p1

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    new-instance p3, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;-><init>()V

    .line 277
    invoke-virtual {p3, p1, p2, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private reloadList()V
    .locals 9

    .line 217
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ZenAccessSettings"

    const-string v0, "DND access cannot be enabled in a work profile"

    .line 219
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 225
    iget-boolean v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->isSearch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mAppTempList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->apps:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    sget v1, Lcom/android/settings/R$string;->sec_app_search_no_result:I

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    goto :goto_1

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->apps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 233
    invoke-static {}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getPackagesRequestingNotificationPolicyAccess()Ljava/util/Set;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 235
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 237
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 238
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->apps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->apps:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mAppList:Ljava/util/ArrayList;

    .line 247
    :cond_4
    :goto_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 248
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 249
    invoke-static {}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getPackagesWithManageNotifications()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->apps:Ljava/util/ArrayList;

    new-instance v4, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-direct {v4, v5}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 251
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 252
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 253
    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 254
    new-instance v7, Lcom/android/settingslib/widget/AppSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 257
    iget-object v8, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 261
    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 262
    sget v4, Lcom/android/settings/R$string;->zen_access_disabled_package_warning:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 265
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/settings/notification/zen/ZenAccessSettings;->getPreferenceSummary(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 268
    :goto_3
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 269
    new-instance v4, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/notification/zen/ZenAccessSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xb4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 101
    sget p0, Lcom/android/settings/R$xml;->zen_access_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    .line 88
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    .line 89
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;)V

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 174
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    sget v0, Lcom/android/settings/R$menu;->zen_mode_list_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 180
    sget p2, Lcom/android/settings/R$id;->zen_mode_list_search_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 182
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    .line 185
    sget v0, Lcom/android/settings/R$string;->search_settings:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 187
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    sget v0, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 191
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 190
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->isSearch:Z

    .line 115
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->reloadList()V

    .line 116
    sget p1, Lcom/android/settings/R$string;->zen_access_empty_text:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mAppTempList:Ljava/util/ArrayList;

    .line 108
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->apps:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenAccessSettings;->filterAppList(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 201
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    sget p1, Lcom/android/settings/R$string;->zen_access_empty_text:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    return-void
.end method

.method public onZenAccessPolicyChanged()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method public refreshUi()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->reloadList()V

    return-void
.end method
