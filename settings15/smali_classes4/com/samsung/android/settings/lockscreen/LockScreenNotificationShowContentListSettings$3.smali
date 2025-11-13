.class public final Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

.field public final synthetic val$appInfoArrayList:Ljava/util/ArrayList;

.field public final synthetic val$finalBlockList:Ljava/util/HashMap;

.field public final synthetic val$installedAppCountInWhiteList:[I

.field public final synthetic val$pm:Landroid/content/pm/PackageManager;

.field public final synthetic val$priorityMap:Ljava/util/HashMap;

.field public final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;Landroid/content/pm/PackageManager;Ljava/util/HashMap;[ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$finalBlockList:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$priorityMap:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$installedAppCountInWhiteList:[I

    iput-object p7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$appInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$finalBlockList:Ljava/util/HashMap;

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v6, v1, v2}, Landroid/content/pm/PackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v9

    :goto_1
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v6, v9

    :goto_2
    const-string v1, "LockScreenNotificationShowContentListSettings"

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$priorityMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    goto :goto_3

    :cond_4
    move-object v7, v9

    :goto_3
    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$installedAppCountInWhiteList:[I

    aget v10, v8, v3

    add-int/2addr v10, v2

    aput v10, v8, v3

    iget v7, v7, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    :try_start_4
    invoke-virtual {v8, v5, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v8

    iget-object v10, v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v5}, Lcom/android/settings/notification/NotificationBackend;->getLockScreenNotificationVisibilityForPackage(ILjava/lang/String;)I

    move-result v8
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eq v8, v2, :cond_7

    const/16 v10, -0x3e8

    if-ne v8, v10, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :cond_7
    :goto_5
    move v8, v2

    goto :goto_7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_4
    const-string v2, "NameNotFound - "

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move v8, v3

    :goto_7
    if-nez v8, :cond_8

    iput-boolean v3, v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings;->mAllAppsEnabled:Z

    goto :goto_8

    :cond_8
    const-string v0, "Enabled : appName = "

    const-string v2, ", appPackageName ="

    const-string v3, " priority : "

    invoke-static {v0, v4, v2, v5, v3}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v7, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_8
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationShowContentListSettings$3;->val$appInfoArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t get the "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_a

    const-string v0, "appName "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-nez v6, :cond_b

    const-string v0, "appIcon "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-nez v5, :cond_c

    const-string/jumbo v0, "packageName "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-object v9
.end method
