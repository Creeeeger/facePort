.class public final Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

.field public final synthetic val$appInfoArrayList:Ljava/util/ArrayList;

.field public final synthetic val$finalBlockList:Ljava/util/HashMap;

.field public final synthetic val$installedAppCountInWhiteList:[I

.field public final synthetic val$pm:Landroid/content/pm/PackageManager;

.field public final synthetic val$priorityMap:Ljava/util/HashMap;

.field public final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;Landroid/content/pm/PackageManager;Ljava/util/HashMap;[ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$finalBlockList:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$priorityMap:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$installedAppCountInWhiteList:[I

    iput-object p7, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$appInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$finalBlockList:Ljava/util/HashMap;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v8

    :goto_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v5, v8

    :goto_2
    const-string v0, "BriefPopupListSettings"

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$priorityMap:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    goto :goto_3

    :cond_4
    move-object v6, v8

    :goto_3
    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$installedAppCountInWhiteList:[I

    aget v9, v7, v2

    add-int/2addr v9, v1

    aput v9, v7, v2

    iget v1, v6, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    move v6, v1

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    :try_start_4
    invoke-virtual {v9, v4, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v9

    invoke-interface {v7, v4, v9}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result v7
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_4
    const-string v7, "NameNotFound - "

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v7, v2

    :goto_6
    if-nez v7, :cond_6

    iput-boolean v2, v1, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    goto :goto_7

    :cond_6
    const-string v1, "Enabled : appName = "

    const-string v2, ", appPackageName ="

    const-string v9, " priority : "

    invoke-static {v1, v3, v2, v4, v9}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v6, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_7
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$4;->val$appInfoArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    const-string p0, "Error..."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-object v8
.end method
