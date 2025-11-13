.class public Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BriefPopupListSettings.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;
    }
.end annotation


# instance fields
.field private final ALL_APPS_BTN:Ljava/lang/String;

.field private isSearch:Z

.field private mAllAppsEnabled:Z

.field mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

.field private mAppAppsPreferenceTitle:Ljava/lang/String;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListPref:Landroidx/preference/PreferenceCategory;

.field private final mAppNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mInstalledAppCountInWhiteList:I

.field private mIsAllAppChecked:Z

.field private mIsDirty:Z

.field private mIsToggledByAllSwitch:Z

.field private mItemPrefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method static bridge synthetic -$$Nest$fputmAllAppsEnabled(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAllAppChecked(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsAllAppChecked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDirty(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsDirty:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsToggledByAllSwitch(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsToggledByAllSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAppList(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->getAppList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEnabledPackage(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isEnabledPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateAllSwitch(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->updateAllSwitch(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEdgeLightingList(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->updateEdgeLightingList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    const-string v0, "AllAppsBtn"

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->ALL_APPS_BTN:Ljava/lang/String;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    .line 141
    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$1;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppNameComparator:Ljava/util/Comparator;

    .line 252
    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$2;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private filterAppList(Ljava/lang/String;)V
    .locals 4

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    if-eqz v2, :cond_1

    .line 195
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isMatchedEntries(Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 200
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getAppList()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    const/4 v0, 0x1

    new-array v10, v0, [I

    const/4 v11, 0x0

    aput v11, v10, v11

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 342
    invoke-static {v1, v11}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getPolicyType()I

    move-result v3

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    .line 346
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getPolicyInfoByCategory(I)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v12, v3

    .line 349
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getPriorityMap()Ljava/util/HashMap;

    move-result-object v13

    .line 350
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v2, v9, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 354
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    .line 355
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 358
    new-instance v7, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v4, v12

    move-object v5, v0

    move-object v6, v13

    move-object v11, v7

    move-object v7, v10

    move-object/from16 v17, v0

    move-object v0, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;Landroid/content/pm/PackageManager;Ljava/util/HashMap;[ILjava/util/ArrayList;)V

    .line 424
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    move-object/from16 v0, v17

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v8

    .line 427
    :try_start_0
    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 428
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v0, 0x3

    .line 429
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v15, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    move v1, v11

    :goto_3
    aget v0, v10, v1

    .line 434
    iput v0, v9, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mInstalledAppCountInWhiteList:I

    return-object v14
.end method

.method private isEnabledPackage(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "BriefPopupListSettings"

    const-string v1, "notification"

    .line 466
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 465
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 470
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    .line 471
    invoke-interface {v1, p1, p0}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 475
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFound - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method private isMatchedEntries(Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;Ljava/lang/CharSequence;)Z
    .locals 3

    .line 204
    new-instance p0, Ljava/util/StringTokenizer;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-direct {p0, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "\u200b"

    const-string v2, ""

    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
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

    .line 439
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsToggledByAllSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 440
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    .line 442
    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 443
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->setSelect(Z)V

    goto :goto_0

    .line 449
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsToggledByAllSwitch:Z

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    .line 453
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getSelected()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_3
    move v1, p1

    .line 459
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 460
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    :goto_2
    return-void
.end method

.method private declared-synchronized updateEdgeLightingList()V
    .locals 8

    monitor-enter p0

    .line 318
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 321
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 322
    iget-object v4, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    .line 323
    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "BriefPopupListSettings"

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " will be stored"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 331
    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getSelected()Z

    move-result v4

    .line 330
    invoke-virtual {v5, v6, v7, v4}, Lcom/android/settings/notification/NotificationBackend;->setAllowEdgeLighting(Ljava/lang/String;IZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
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
            "Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppList:Ljava/util/ArrayList;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppList:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    iget v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mInstalledAppCountInWhiteList:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->updateAppList(Ljava/util/ArrayList;ZI)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BriefPopupListSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 83
    sget p0, Lcom/android/settings/R$xml;->brief_popup_list_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsDirty:Z

    .line 100
    iput p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mInstalledAppCountInWhiteList:I

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsAllAppChecked:Z

    const-string v0, "brief_popup_list_settings_category"

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    .line 104
    sget v0, Lcom/android/settings/R$string;->brief_popup_all_apps_btn_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 108
    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask-IA;)V

    new-array p0, p1, [Ljava/lang/Void;

    .line 109
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 490
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 491
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 496
    sget v0, Lcom/android/settings/R$menu;->brief_pop_up_list_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 497
    sget p2, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 499
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 500
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    .line 502
    sget v0, Lcom/android/settings/R$string;->search_settings:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 503
    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 504
    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    sget v0, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 508
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 507
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 510
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
    .locals 1

    .line 483
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 485
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 170
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 243
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 244
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->updateEdgeLightingList()V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->filterAppList(Ljava/lang/String;)V

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

    .line 114
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method

.method public updateAppList(Ljava/util/ArrayList;ZI)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;",
            ">;ZI)V"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->isSearch:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 282
    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    .line 283
    new-instance v9, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    sget v3, Lcom/android/settings/R$string;->brief_popup_all_apps_btn_text:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "AllAppsBtn"

    move-object v3, v9

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->setBriefAppInfo(Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;)V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->allowDrawerDivider(Z)V

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {v1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    const/4 p2, 0x0

    move v1, p2

    .line 290
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 291
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    if-nez v3, :cond_2

    const-string v3, "BriefPopupListSettings"

    const-string v4, "updateAppList item is null.."

    .line 294
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 298
    :cond_2
    new-instance v4, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;-><init>(Landroid/content/Context;)V

    add-int/lit8 v5, p3, -0x1

    if-ne v1, v5, :cond_3

    .line 301
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->allowDrawerDivider(Z)V

    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v1, v5, :cond_4

    .line 303
    invoke-virtual {v4, p2}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->allowLineDivider(Z)V

    .line 306
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->setBriefAppInfo(Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;)V

    .line 308
    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getSelected()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 309
    iget-object v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    iget-object v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 313
    iget-object v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
