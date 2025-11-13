.class Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;
.super Ljava/lang/Object;
.source "NotificationUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppList(Landroid/content/Context;)Ljava/util/ArrayList;
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

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;

.field final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$appInfoArrayList:Ljava/util/ArrayList;

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

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->call()Ljava/lang/Void;

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

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 101
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 102
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 106
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    :cond_0
    const/4 v1, 0x0

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-static {v5, v2, v1}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v0

    .line 115
    :goto_0
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v5, v0

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 119
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->-$$Nest$smisEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 121
    sput-boolean v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mIsAllAppChecked:Z

    .line 122
    sput-boolean v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    goto :goto_2

    .line 124
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enabled : appName = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", appPackageName ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " priority : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$appInfoArrayList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 129
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Error..."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-object v0
.end method
