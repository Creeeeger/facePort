.class public final Lcom/android/systemui/statusbar/notification/InstantAppNotifier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentNotifs:Landroid/util/ArraySet;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mUserSwitchListener:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mCurrentNotifs:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;-><init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUserSwitchListener:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final appTransitionStarting(JJZI)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    if-ne p1, p6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->updateForegroundInstantApps()V

    :cond_0
    return-void
.end method

.method public final checkAndPostForStack(Landroid/app/ActivityTaskManager$RootTaskInfo;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 7

    :try_start_0
    iget-object v0, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/util/Pair;

    iget v1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    const-wide/16 v0, 0x2000

    invoke-interface {p4, v2, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_1

    iget v3, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget v6, p1, p2

    move-object v1, p0

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->postInstantAppNotif(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onKeyguardShowingChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->updateForegroundInstantApps()V

    return-void
.end method

.method public final postInstantAppNotif(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    const v6, 0x7f1307ac

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.substName"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mCurrentNotifs:Landroid/util/ArraySet;

    new-instance v6, Landroid/util/Pair;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    const v6, 0x7f1307ad

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    const v9, 0x7f1307af

    goto :goto_0

    :cond_0
    const v9, 0x7f1307ae

    :goto_0
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "package"

    const/4 v14, 0x0

    invoke-static {v11, v2, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/high16 v12, 0x4000000

    move-object v7, v14

    move-object v14, v15

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    new-instance v10, Landroid/app/Notification$Action$Builder;

    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    const v12, 0x7f1301b3

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v7, v11, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v14

    const-string v13, "android.intent.action.VIEW"

    if-eqz v6, :cond_1

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/high16 v12, 0x4000000

    move-object v6, v13

    move-object v13, v0

    move-object/from16 v16, v14

    move-object v14, v15

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    goto :goto_1

    :cond_1
    move-object v6, v13

    move-object/from16 v16, v14

    move-object v14, v7

    :goto_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v3}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v10, v9, :cond_3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move/from16 v11, p5

    if-ne v9, v11, :cond_2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object v11, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move-object v11, v7

    :goto_3
    new-instance v13, Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/systemui/util/NotificationChannels;->INSTANT:Ljava/lang/String;

    invoke-direct {v13, v0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v9, -0x80000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v9, 0x10000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v10, 0x0

    const/high16 v12, 0x4000000

    move-object/from16 v17, v13

    move-object v13, v0

    move-object/from16 v18, v14

    move-object v14, v15

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-object v14, v7

    :goto_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unique:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    const v10, 0x7fffffff

    and-int/2addr v6, v10

    const-string v10, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "android.intent.extra.LONG_VERSION_CODE"

    iget-wide v10, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v0, v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "android.intent.extra.INSTANT_APP_FAILURE"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v11

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/high16 v12, 0x4000000

    move-object v14, v15

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v6, Landroid/app/Notification$Action$Builder;

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    const v10, 0x7f130712

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v9, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    move-object/from16 v6, v17

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_4
    move-object v6, v13

    move-object/from16 v18, v14

    :goto_5
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    move-object/from16 v5, v16

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    move-object/from16 v14, v18

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    const v6, 0x7f060172

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7f1307b0

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v2, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f080b97

    invoke-static {v1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x7

    move-object/from16 v4, p4

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final preloadRecentApps()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->updateForegroundInstantApps()V

    return-void
.end method

.method public final start()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUserSwitchListener:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateForegroundInstantApps()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
