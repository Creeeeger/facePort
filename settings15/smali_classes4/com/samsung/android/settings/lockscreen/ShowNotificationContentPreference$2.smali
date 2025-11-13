.class public final Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

.field public final synthetic val$appInfoArrayList:Ljava/util/ArrayList;

.field public final synthetic val$finalBlockList:Ljava/util/HashMap;

.field public final synthetic val$pm:Landroid/content/pm/PackageManager;

.field public final synthetic val$priorityMap:Ljava/util/HashMap;

.field public final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;Landroid/content/pm/PackageManager;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$finalBlockList:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$priorityMap:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$appInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$finalBlockList:Ljava/util/HashMap;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v3, v8

    :goto_0
    const-string v0, "ShowNotificationContentPreference"

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$priorityMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    goto :goto_1

    :cond_2
    move-object v2, v8

    :goto_1
    if-eqz v2, :cond_3

    iget v2, v2, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->this$0:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_1
    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, v2, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v4}, Lcom/android/settings/notification/NotificationBackend;->getLockScreenNotificationVisibilityForPackage(ILjava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    const/16 v7, -0x3e8

    if-ne v0, v7, :cond_5

    :cond_4
    move v1, v5

    :cond_5
    :goto_3
    move v7, v1

    goto :goto_4

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    const-string v5, "NameNotFound - "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_4
    if-nez v7, :cond_6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, v2, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mIsAllAppChecked:Ljava/lang/Boolean;

    goto :goto_5

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$2;->val$appInfoArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t get the "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_8

    const-string v1, "appName "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-nez v4, :cond_9

    const-string/jumbo v1, "packageName "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v8
.end method
