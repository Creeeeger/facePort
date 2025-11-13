.class Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;
.super Ljava/lang/Object;
.source "NotificationUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getLifeStyleDndException(Landroid/content/Context;)Ljava/util/ArrayList;
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
.field final synthetic val$appInfoArrayList:Ljava/util/ArrayList;

.field final synthetic val$mUm:Landroid/os/UserManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;

.field final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic val$rsHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method constructor <init>(Landroid/os/UserManager;Landroid/content/pm/ResolveInfo;Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$mUm:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$rsHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iput-object p4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$appInfoArrayList:Ljava/util/ArrayList;

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

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 413
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 414
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 415
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 417
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 418
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object v4

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_0

    .line 424
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 427
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 430
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    iget-object v5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$pm:Landroid/content/pm/PackageManager;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v4, v6}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 432
    new-instance v5, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v5}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    .line 433
    invoke-virtual {v5, v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setTitle(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v5, v2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setmPackage(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v5, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setmPackageIcon(Landroid/graphics/drawable/Drawable;)V

    .line 436
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setAddAppException(Ljava/lang/Boolean;)V

    .line 437
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setuId(I)V

    .line 438
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$4;->val$appInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 440
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
