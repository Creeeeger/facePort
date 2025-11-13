.class public final Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iput-object v1, v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mCurrentTask:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iput-boolean v3, v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mProcessing:Z

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Landroid/app/Service;->stopForeground(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[processDownload] start download task : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LanguagePackDownloadService"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->makeProgressNotification(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;Ljava/lang/Integer;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->updateNotification(Landroid/app/Notification;)V

    iget-object v5, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iput v3, v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->startDownloadAndInstall(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;)V

    :catch_0
    :goto_1
    iget-object v0, v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_WAITING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget v1, v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0, v1, v6}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;ILjava/lang/String;)V

    const-wide/16 v0, 0x32

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v3, v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mToastType:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[processDownload] finish download task : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$ProcessingRunnable;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iput-object v4, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mCurrentTask:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    goto/16 :goto_0

    :cond_2
    :goto_2
    :try_start_1
    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    const-string v0, "[processDownload] wait for task finish"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
