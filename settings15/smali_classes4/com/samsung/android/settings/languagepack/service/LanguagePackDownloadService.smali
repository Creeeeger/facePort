.class public Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;
.super Landroid/app/Service;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;
.implements Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;
    }
.end annotation


# static fields
.field public static mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;


# instance fields
.field public final mBinder:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

.field public mCurrentTask:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

.field public mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mProcessing:Z

.field public final mQueue:Ljava/util/Queue;

.field public mResultBroadcastPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;-><init>(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;)V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mBinder:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mProcessing:Z

    return-void
.end method

.method public static makeProgressNotification(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;Ljava/lang/Integer;)Landroid/app/Notification;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mCachedNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/16 p1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createNotificationChannel(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1424eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final enqueueDownloadTask(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mCurrentTask:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    iget-object v2, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    iget-object v4, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_2

    monitor-exit v0

    return-void

    :cond_4
    new-instance v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;-><init>(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mProcessing:Z

    const/4 v2, 0x1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->makeProgressNotification(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;Ljava/lang/Integer;)Landroid/app/Notification;

    move-result-object p1

    const/16 v1, 0x2710

    invoke-virtual {p0, v1, p1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;-><init>(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_5
    iput-boolean v2, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mProcessing:Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final finishUninstall(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->isPackageInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->isUnInstallablePackage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    const-string v2, "locale"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Broadcast intent LANGUAGE_PACK_REMOVED : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mResultBroadcastPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LanguagePackDownloadService"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final finishUpdate()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "language_pack_update_information"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_VERSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    const-string v2, "extra_lang_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_FINISH:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    iget v0, p2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "install_finish"

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->createNotificationChannel(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "com.android.settings.Settings$LanguagePackSettingsActivity"

    const-string v5, "com.android.settings"

    if-eqz v2, :cond_1

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    const-string/jumbo v4, "sec_general_device_settings"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    new-array v5, p1, [Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    aget-object v6, v4, p1

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v6, 0x1000c000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v4, p1

    const/high16 v5, 0xc000000

    invoke-static {v2, p1, v4, v5, v1}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f142615

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f142614

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const v0, 0x7f0805fb

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mOrder:I

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object p2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mCurrentTask:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->makeProgressNotification(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;Ljava/lang/Integer;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->updateNotification(Landroid/app/Notification;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mBinder:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    return-object p0
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "downloads_progress"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->createNotificationChannel(Ljava/lang/String;)V

    const-string v0, "install_finish"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->createNotificationChannel(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->setDownloadListener(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->setVersionUpdateListener(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "language_pack_update_information"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->setVersionUpdateMap(Ljava/util/Map;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->makeLanguageList()Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error on makeLanguageList() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LanguagePackDownloadService"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->setDownloadListener(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->setVersionUpdateListener(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackVersionUpdateListener;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_4

    const-string/jumbo p2, "package"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mResultBroadcastPackage:Ljava/lang/String;

    :cond_0
    const-string p2, "command"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "cancel"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "download"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "locale"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->enqueueDownloadTask(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->setCancel()V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->makeLanguageList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->tryToMakeUpdateInformationIfNeeded(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final publishProgress(JLcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    const-string v2, "extra_lang_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_lang_progress"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-wide v1, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mTotalLanguagePackSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extra_total_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mCurrentTask:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x64

    mul-long/2addr p1, v1

    iget-wide v1, p3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mTotalLanguagePackSize:J

    div-long/2addr p1, v1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget-object p3, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mCurrentTask:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->makeProgressNotification(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;Ljava/lang/Integer;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->updateNotification(Landroid/app/Notification;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final tryToMakeUpdateInformationIfNeeded(Ljava/util/List;)V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "language_pack_update_information"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_success_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v6, v6, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v4, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda9;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sub-long v4, v2, v0

    sget-wide v6, Lcom/samsung/android/settings/languagepack/constant/LanguagePackConstant;->UPDATE_CHECK_PERIOD_MILLIS:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    const-string/jumbo v4, "tryToMakeUpdateInformationIfNeeded() : start update("

    const-string v5, " : "

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanguagePackDownloadService"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public final updateLatestVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUpdateInformation : ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] latest version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanguagePackDownloadService"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "language_pack_update_information"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final updateNotification(Landroid/app/Notification;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "downloads_progress"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->createNotificationChannel(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
