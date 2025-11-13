.class public final Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIsFromDnd:Z

.field public mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 1

    const-string v0, "zen_contact"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iput-boolean p3, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mIsFromDnd:Z

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_contact"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 19

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v2, v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    const/4 v3, 0x4

    iput v3, v2, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    const v6, 0x7f0803d9

    iput v6, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    iget-object v6, v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mContext:Landroid/content/Context;

    const v7, 0x7f143858

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getDndException(Landroid/content/Context;Lcom/android/settings/notification/zen/ZenModeBackend;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_0
    iget-object v0, v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v13, v8, v9, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v10, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;

    move-object v7, v10

    move-object v9, v6

    move-object v3, v10

    move-object v10, v0

    move-object/from16 v17, v0

    move-object v0, v11

    move-object v11, v13

    move-object/from16 v18, v6

    move-object v6, v12

    move-object v12, v14

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;-><init>(Landroid/content/pm/ResolveInfo;Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;Landroid/content/pm/UserInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v0

    move-object v12, v6

    move-object/from16 v0, v17

    move-object/from16 v6, v18

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    move-object/from16 v18, v6

    move-object v0, v11

    move-object v6, v12

    :try_start_0
    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x3

    invoke-interface {v6, v7, v8, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object/from16 v18, v6

    :goto_2
    move-object/from16 v6, v18

    const/4 v3, 0x4

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    const-string v3, "com.google.android.cellbroadcastreceiver:0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v13}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->addAppNotificationTypeInfo(Landroid/content/pm/PackageManager;)Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_3
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v2, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v2, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppSummary(Landroid/content/Context;)V

    iget-object v0, v2, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
