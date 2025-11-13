.class public final Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic val$appInfoArrayList:Ljava/util/ArrayList;

.field public final synthetic val$backend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field public final synthetic val$mContext:Landroid/content/Context;

.field public final synthetic val$pm:Landroid/content/pm/PackageManager;

.field public final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;

.field public final synthetic val$user:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Landroid/content/pm/UserInfo;Lcom/android/settings/notification/zen/ZenModeBackend;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$user:Landroid/content/pm/UserInfo;

    iput-object p4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$backend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iput-object p5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p6, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$appInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$user:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$backend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->canAppBypassDnd(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$user:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$user:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v2, v4}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v3}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    iput-object v1, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    iput-object v2, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackageIcon:Landroid/graphics/drawable/Drawable;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$user:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iput v2, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$3;->val$appInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
