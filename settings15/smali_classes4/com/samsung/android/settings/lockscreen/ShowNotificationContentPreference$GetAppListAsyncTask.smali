.class public final Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$GetAppListAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

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
    move-object v7, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, v1, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/HashMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v13, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;

    move-object v0, v13

    move-object v1, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;-><init>(Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;Landroid/content/pm/PackageManager;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3

    invoke-interface {v10, v0, v1, p0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    return-object v9
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ljava/util/ArrayList;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$GetAppListAsyncTask;->this$0:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mAppNameComparator:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$3;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mIsAllAppChecked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x8d0f

    const/16 v2, 0x1153

    if-eqz v0, :cond_0

    const-string p1, "All apps turned on to show content"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f142341

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_6

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    iget-object v5, v5, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->appName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->appName:Ljava/lang/String;

    :cond_2
    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v5, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f142343

    invoke-virtual {v7, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    iget-object v5, v5, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->appName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v5, v3

    :goto_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->appName:Ljava/lang/String;

    :cond_5
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f142344

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->appName:Ljava/lang/String;

    :cond_7
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f142342

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f142345

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " apps turned on to show content"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    move-object p1, v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mSummaryText:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSummary:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
