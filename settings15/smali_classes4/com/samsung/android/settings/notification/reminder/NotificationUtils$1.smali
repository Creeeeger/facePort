.class public final Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$appInfoArrayList:Ljava/util/ArrayList;

.field public final synthetic val$mContext:Ljava/lang/Object;

.field public final synthetic val$pm:Landroid/content/pm/PackageManager;

.field public final synthetic val$resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0

    iput p5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$mContext:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$appInfoArrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;Landroid/content/pm/UserInfo;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$mContext:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$appInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "Error..."

    const-string v3, " priority : 0"

    const-string v4, ", appPackageName ="

    const-string v5, "Enabled : appName = "

    const-string v6, "NameNotFound - "

    const-string/jumbo v7, "notification"

    const-string v8, "NotificationUtils"

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$mContext:Ljava/lang/Object;

    iget v0, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    const-string v4, ":"

    invoke-static {v0, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v11

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    if-eqz v3, :cond_2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    move-object v4, v11

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v0, v10, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    move-object v5, v11

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v3, v5}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v4}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    iput-object v2, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    iput-object v0, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    iput-object v3, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackageIcon:Landroid/graphics/drawable/Drawable;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    iput v0, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    iget-object v0, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$appInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v9

    :pswitch_0
    iget-object v0, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_6

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_3
    :try_start_1
    iget-object v12, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v0, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v14, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v14, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-static {v14, v0, v10}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v12

    move-object v12, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v12, v9

    :goto_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v14, v12

    move-object v12, v9

    :goto_3
    if-eqz v14, :cond_5

    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    check-cast v11, Landroid/content/Context;

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v2, v13, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v13, v2}, Landroid/app/INotificationManager;->isReminderEnabled(Ljava/lang/String;I)Z

    move-result v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    invoke-virtual {v6, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v0, v10

    :goto_5
    if-nez v0, :cond_4

    sput-boolean v10, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    goto :goto_6

    :cond_4
    sget v2, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    invoke-static {v5, v14, v4, v13, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object v1, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$appInfoArrayList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    invoke-direct {v2, v14, v13, v12, v0}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    sget v0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    return-object v9

    :pswitch_1
    iget-object v0, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_b

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v15, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_7
    :try_start_4
    iget-object v12, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v0, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    iget-object v13, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-static {v13, v0, v10}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v16, v0

    :goto_8
    move-object v14, v12

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v12, v9

    :goto_9
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object/from16 v16, v9

    goto :goto_8

    :goto_a
    if-eqz v14, :cond_a

    if-eqz v16, :cond_a

    if-eqz v15, :cond_a

    check-cast v11, Landroid/content/Context;

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v2, v15, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v15, v2}, Landroid/app/INotificationManager;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    goto :goto_b

    :cond_8
    move v2, v10

    :goto_b
    move/from16 v18, v2

    goto :goto_d

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_8
    invoke-virtual {v6, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move/from16 v18, v10

    :goto_d
    if-nez v18, :cond_9

    sput-boolean v10, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    goto :goto_e

    :cond_9
    sget v0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    invoke-static {v5, v14, v4, v15, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    iget-object v0, v1, Lcom/samsung/android/settings/notification/reminder/NotificationUtils$1;->val$appInfoArrayList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    const/16 v17, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_a
    sget v0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mInstalledAppCountInWhiteList:I

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_f
    return-object v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
