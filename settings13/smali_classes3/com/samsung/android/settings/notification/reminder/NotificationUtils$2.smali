.class Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;
.super Ljava/lang/Object;
.source "NotificationUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getDndException(Landroid/content/Context;Lcom/android/settings/notification/zen/ZenModeBackend;)Ljava/util/ArrayList;
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

.field final synthetic val$backend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mUm:Landroid/os/UserManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;

.field final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/os/UserManager;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/android/settings/notification/zen/ZenModeBackend;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$mUm:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$backend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iput-object p5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p6, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$appInfoArrayList:Ljava/util/ArrayList;

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

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$mUm:Landroid/os/UserManager;

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

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 216
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 217
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 218
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 219
    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 220
    iget-object v5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$backend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v5, v2, v4}, Lcom/android/settings/notification/zen/ZenModeBackend;->canAppBypassDnd(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 227
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 230
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    iget-object v5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$pm:Landroid/content/pm/PackageManager;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v4, v6}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 232
    new-instance v5, Lcom/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v5}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    .line 233
    invoke-virtual {v5, v3}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setTitle(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v5, v2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setmPackage(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v5, v4}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setmPackageIcon(Landroid/graphics/drawable/Drawable;)V

    .line 236
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setAddAppException(Ljava/lang/Boolean;)V

    .line 237
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v1}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->setuId(I)V

    .line 238
    invoke-virtual {v5}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->getmPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$2;->val$appInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 242
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
