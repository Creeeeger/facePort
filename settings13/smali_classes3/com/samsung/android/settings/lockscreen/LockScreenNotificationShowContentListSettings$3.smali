.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;
.super Ljava/lang/Object;
.source "LockScreenNotificationShowContentListSettings.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->getAppList()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

.field final synthetic val$appInfoArrayList:Ljava/util/ArrayList;

.field final synthetic val$finalBlockList:Ljava/util/HashMap;

.field final synthetic val$installedAppCountInWhiteList:[I

.field final synthetic val$pm:Landroid/content/pm/PackageManager;

.field final synthetic val$priorityMap:Ljava/util/HashMap;

.field final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;Landroid/content/pm/PackageManager;Ljava/util/HashMap;[ILjava/util/ArrayList;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$finalBlockList:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$priorityMap:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$installedAppCountInWhiteList:[I

    iput-object p7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$appInfoArrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 352
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 353
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$finalBlockList:Ljava/util/HashMap;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    .line 361
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 364
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$pm:Landroid/content/pm/PackageManager;

    invoke-static {v3, v5, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->-$$Nest$mgetAppIcon(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v8

    .line 371
    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v3, v2

    move-object v5, v8

    :goto_1
    const-string v0, "LockScreenNotificationShowContentListSettings"

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 375
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$priorityMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 376
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    goto :goto_2

    :cond_2
    move-object v2, v8

    :goto_2
    if-eqz v2, :cond_3

    .line 381
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$installedAppCountInWhiteList:[I

    aget v7, v6, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v1

    .line 382
    iget v2, v2, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v1

    .line 385
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->-$$Nest$misEnabledPackage(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->-$$Nest$fputmIsAllAppChecked(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Z)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->-$$Nest$fputmAllAppsEnabled(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Z)V

    goto :goto_4

    .line 390
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled : appName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appPackageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " priority : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$appInfoArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 395
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get the "

    .line 396
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_6

    const-string v1, "appName "

    .line 397
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-nez v5, :cond_7

    const-string v1, "appIcon "

    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-nez v4, :cond_8

    const-string v1, "packageName "

    .line 399
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v8
.end method
