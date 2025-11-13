.class public Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LockScreenNotificationShowContentListSettings.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;
    }
.end annotation


# instance fields
.field private final ALL_APPS_BTN:Ljava/lang/String;

.field private isSearch:Z

.field private mAllAppsEnabled:Z

.field mAllSwitchPreference:Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

.field private mAppAppsPreferenceTitle:Ljava/lang/String;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListPref:Landroidx/preference/PreferenceCategory;

.field private final mAppNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
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
            "Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method static bridge synthetic -$$Nest$fputmAllAppsEnabled(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllAppsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAllAppChecked(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mIsAllAppChecked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDirty(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mIsDirty:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsToggledByAllSwitch(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mIsToggledByAllSwitch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAppIcon(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAppList(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->getAppList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEnabledPackage(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->isEnabledPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateAllSwitch(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->updateAllSwitch(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLockScreenNotificationVisibility(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->updateLockScreenNotificationVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mItemPrefList:Ljava/util/ArrayList;

    const-string v0, "AllAppsBtn"

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->ALL_APPS_BTN:Ljava/lang/String;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllAppsEnabled:Z

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->isSearch:Z

    .line 131
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppNameComparator:Ljava/util/Comparator;

    .line 240
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private filterAppList(Ljava/lang/String;)V
    .locals 4

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppTempList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->isSearch:Z

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    .line 185
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->isMatchedEntries(Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 190
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 421
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 425
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x1

    .line 430
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 433
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method private getAppList()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    const/4 v0, 0x1

    new-array v10, v0, [I

    const/4 v11, 0x0

    aput v11, v10, v11

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 332
    invoke-static {v1, v11}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getPolicyType()I

    move-result v3

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    .line 336
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getPolicyInfoByCategory(I)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v12, v3

    .line 339
    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getPriorityMap()Ljava/util/HashMap;

    move-result-object v13

    .line 340
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v2, v9, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 344
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    .line 345
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 346
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

    .line 348
    new-instance v7, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;

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

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;Landroid/content/pm/PackageManager;Ljava/util/HashMap;[ILjava/util/ArrayList;)V

    .line 405
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    move-object/from16 v0, v17

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v8

    .line 408
    :try_start_0
    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 409
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v0, 0x3

    .line 410
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v15, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    move v1, v11

    :goto_3
    aget v0, v10, v1

    .line 415
    iput v0, v9, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mInstalledAppCountInWhiteList:I

    return-object v14
.end method

.method private isEnabledPackage(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "LockScreenNotificationShowContentListSettings"

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 462
    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 463
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/notification/NotificationBackend;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/16 v0, -0x3e8

    if-ne p0, v0, :cond_1

    :cond_0
    move v2, p1

    :cond_1
    return v2

    :catch_0
    move-exception p0

    .line 468
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
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

.method private isMatchedEntries(Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;Ljava/lang/CharSequence;)Z
    .locals 3

    .line 194
    new-instance p0, Ljava/util/StringTokenizer;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-direct {p0, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 196
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "\u200b"

    const-string v2, ""

    .line 204
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
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
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mIsToggledByAllSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 440
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllAppsEnabled:Z

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    .line 442
    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 443
    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->setSelect(Z)V

    goto :goto_0

    .line 445
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mIsToggledByAllSwitch:Z

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    .line 449
    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getSelected()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_3
    move v1, p1

    .line 454
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 455
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllAppsEnabled:Z

    :goto_2
    return-void
.end method

.method private declared-synchronized updateLockScreenNotificationVisibility()V
    .locals 8

    monitor-enter p0

    .line 305
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 308
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 309
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    .line 310
    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "LockScreenNotificationShowContentListSettings"

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " will be stored"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 318
    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 319
    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    .line 320
    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 317
    :goto_1
    invoke-virtual {v5, v6, v7, v4}, Lcom/android/settings/notification/NotificationBackend;->setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "LockScreenNotificationShowContentListSettings"

    .line 322
    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 325
    :cond_2
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
            "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppList:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->isSearch:Z

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppTempList:Ljava/util/ArrayList;

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppList:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllAppsEnabled:Z

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mInstalledAppCountInWhiteList:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->updateAppList(Ljava/util/ArrayList;ZI)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LockScreenNotificationShowContentListSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 80
    sget p0, Lcom/android/settings/R$xml;->sec_lock_screen_notification_show_content_list:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mIsDirty:Z

    .line 97
    iput p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mInstalledAppCountInWhiteList:I

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mIsAllAppChecked:Z

    const-string v0, "apps_that_can_show_content_category"

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    .line 101
    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_notifications_show_content_all_apps_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 105
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$GetAppListAsyncTask-IA;)V

    new-array p0, p1, [Ljava/lang/Void;

    .line 106
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 482
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 488
    sget v0, Lcom/android/settings/R$menu;->brief_pop_up_list_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 489
    sget p2, Lcom/android/settings/R$id;->search_app_list_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 491
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 492
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_2

    .line 494
    sget v0, Lcom/android/settings/R$string;->search_settings:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 495
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 496
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    sget v0, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    .line 499
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 500
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 499
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 502
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

    .line 475
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 476
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 477
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 160
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->isSearch:Z

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->isSearch:Z

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 234
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 235
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->updateLockScreenNotificationVisibility()V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->filterAppList(Ljava/lang/String;)V

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

    .line 111
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method

.method public updateAppList(Ljava/util/ArrayList;ZI)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;",
            ">;ZI)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->isSearch:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 270
    new-instance v1, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    .line 271
    new-instance v9, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    sget v3, Lcom/android/settings/R$string;->sec_lockscreen_notifications_show_content_all_apps_text:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "AllAppsBtn"

    move-object v3, v9

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->setShowContentAppInfo(Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->allowDrawerDivider(Z)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppAppsPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    invoke-virtual {v1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 275
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    const/4 p2, 0x0

    move v1, p2

    .line 278
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 279
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    if-nez v3, :cond_2

    const-string v3, "LockScreenNotificationShowContentListSettings"

    const-string v4, "updateAppList item is null.."

    .line 282
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    :cond_2
    new-instance v4, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;-><init>(Landroid/content/Context;)V

    add-int/lit8 v5, p3, -0x1

    if-ne v1, v5, :cond_3

    .line 289
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->allowDrawerDivider(Z)V

    goto :goto_1

    .line 290
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v1, v5, :cond_4

    .line 291
    invoke-virtual {v4, p2}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->allowLineDivider(Z)V

    .line 294
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->setShowContentAppInfo(Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;)V

    .line 296
    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getSelected()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 297
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mPreferenceChange:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAppListPref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 300
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
