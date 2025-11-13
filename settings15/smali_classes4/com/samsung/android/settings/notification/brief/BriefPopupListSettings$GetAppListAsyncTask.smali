.class public final Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

    const/4 v9, 0x0

    filled-new-array {v9}, [I

    move-result-object v10

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    move-result-object v1

    iget v2, v1, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyType:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    :goto_0
    move-object v12, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, v1, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/HashMap;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v8, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v6, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;

    move-object v0, v6

    move-object v1, v8

    move-object v3, v12

    move-object v4, v11

    move-object v5, v13

    move-object v9, v6

    move-object v6, v10

    move-object/from16 p1, v11

    move-object v11, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;Landroid/content/pm/PackageManager;Ljava/util/HashMap;[ILjava/util/ArrayList;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v11

    const/4 v9, 0x0

    move-object/from16 v11, p1

    goto :goto_2

    :cond_1
    move-object v11, v7

    :try_start_0
    invoke-interface {v15, v11}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-interface {v15, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :goto_4
    aget v0, v10, v1

    iput v0, v8, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mInstalledAppCountInWhiteList:I

    return-object v14
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->fillInAppList(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
