.class public Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationReminderAppListSettings.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;
    }
.end annotation


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private final ALL_APPS_BTN:Ljava/lang/String;

.field private isSearch:Z

.field mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

.field private mAppAppsPreferenceTitle:Ljava/lang/String;

.field mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListPref:Landroidx/preference/PreferenceCategory;

.field private final mAppNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mIsDirty:Z

.field private mIsToggledByAllSwitch:Z

.field private mItemPrefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsDirty(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsDirty:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsToggledByAllSwitch(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsToggledByAllSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAllSwitch(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->updateAllSwitch(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNotificationReminderList(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->updateNotificationReminderList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 364
    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    const-string v0, "AllAppsBtn"

    .line 54
    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->ALL_APPS_BTN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    .line 116
    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$1;-><init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppNameComparator:Ljava/util/Comparator;

    .line 227
    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;-><init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private filterAppList(Ljava/lang/String;)V
    .locals 4

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    .line 168
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isMatchedEntries(Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 173
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private isMatchedEntries(Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;Ljava/lang/CharSequence;)Z
    .locals 3

    .line 177
    new-instance p0, Ljava/util/StringTokenizer;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-direct {p0, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 179
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "\u200b"

    const-string v2, ""

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private updateAllSwitch(Z)V
    .locals 3

    const-string v0, "NotificationReminderAppListSettings"

    const-string v1, "updateAllSwitch called"

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsToggledByAllSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 310
    sput-boolean p1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    .line 312
    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 313
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->setSelect(Z)V

    goto :goto_0

    .line 315
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsToggledByAllSwitch:Z

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    .line 319
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getSelected()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_3
    move v1, p1

    .line 324
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 325
    sput-boolean v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    :goto_2
    return-void
.end method

.method private declared-synchronized updateNotificationReminderList()V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "NotificationReminderAppListSettings"

    const-string v1, "updateNotificationReminderList called"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    .line 291
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    .line 293
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "NotificationReminderAppListSettings"

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " will be stored"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 300
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getSelected()Z

    move-result v2

    .line 299
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings/notification/NotificationBackend;->setReminderEnabledForPackage(Ljava/lang/String;IZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 302
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public fillInAppList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NotificationReminderAppListSettings"

    const-string v1, "fillInAppList called"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppList:Ljava/util/ArrayList;

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppList:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    sget v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->updateAppList(Ljava/util/ArrayList;ZI)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string p0, "NotificationReminderAppListSettings"

    const-string v0, "getLogTag called"

    .line 68
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8cce

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 63
    sget p0, Lcom/android/settings/R$xml;->noti_reminder_list_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "NotificationReminderAppListSettings"

    const-string v0, "onActivityCreated called"

    .line 100
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NotificationReminderAppListSettings"

    const-string v0, "onCreate called"

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsDirty:Z

    .line 82
    sput p1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    const/4 v0, 0x1

    .line 83
    sput-boolean v0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mIsAllAppChecked:Z

    const-string v0, "notification_reminder_list_key"

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    .line 85
    sget v0, Lcom/android/settings/R$string;->reminder_select_apps_summary_all_apps:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 87
    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask;-><init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$GetAppListAsyncTask-IA;)V

    new-array p0, p1, [Ljava/lang/Void;

    .line 88
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 339
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    sget v0, Lcom/android/settings/R$menu;->brief_pop_up_list_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 345
    sget p2, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 347
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    .line 350
    sget v0, Lcom/android/settings/R$string;->search_settings:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 351
    iget-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 352
    iget-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    sget v0, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    .line 355
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 356
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 355
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 358
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

.method public onDestroyView()V
    .locals 2

    .line 331
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    const-string v0, "NotificationReminderAppListSettings"

    const-string v1, "onDestroyView called"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 334
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    .line 144
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return p1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "NotificationReminderAppListSettings"

    const-string v1, "onPause called"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 222
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->updateNotificationReminderList()V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->filterAppList(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string p0, "NotificationReminderAppListSettings"

    const-string v0, "onResume called"

    .line 94
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAppList(Ljava/util/ArrayList;ZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;",
            ">;ZI)V"
        }
    .end annotation

    const-string v0, "NotificationReminderAppListSettings"

    const-string v1, "updateAppList called"

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 256
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->isSearch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 257
    new-instance v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    .line 258
    new-instance v10, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    sget v4, Lcom/android/settings/R$string;->brief_popup_all_apps_btn_text:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "AllAppsBtn"

    move-object v4, v10

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {v2, v10}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->setReminderAppInfo(Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;)V

    .line 259
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->allowDrawerDivider(Z)V

    .line 260
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 262
    iget-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    iget-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    const/4 p2, 0x0

    move v2, p2

    .line 266
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 267
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    if-nez v4, :cond_2

    const-string v4, "updateAppList item is null.."

    .line 269
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 272
    :cond_2
    new-instance v5, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-direct {v5, v1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;-><init>(Landroid/content/Context;)V

    add-int/lit8 v6, p3, -0x1

    if-ne v2, v6, :cond_3

    .line 274
    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->allowDrawerDivider(Z)V

    goto :goto_1

    .line 275
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v2, v6, :cond_4

    .line 276
    invoke-virtual {v5, p2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->allowLineDivider(Z)V

    .line 278
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->setReminderAppInfo(Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;)V

    .line 280
    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getSelected()Z

    move-result v4

    invoke-virtual {v5, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 281
    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 282
    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 283
    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
