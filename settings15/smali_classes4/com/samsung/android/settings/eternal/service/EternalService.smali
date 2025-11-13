.class public Lcom/samsung/android/settings/eternal/service/EternalService;
.super Landroid/app/Service;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBackupFuture:Ljava/util/concurrent/Future;

.field public mContext:Landroid/content/Context;

.field public mFileUtils:Lcom/samsung/android/settings/eternal/utils/FileUtils;

.field public mRestoreFuture:Ljava/util/concurrent/Future;

.field public final mWorkerExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/service/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Eternal/EternalService"

    const-string v1, "deleteFiles()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "Eternal/EternalService"

    const-string v2, "backup()"

    invoke-static {p0, v2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v3, p1}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/android/settings/eternal/data/BackupInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x2

    iput v5, v4, Lcom/samsung/android/settings/eternal/data/BackupInfo;->mRequestFrom:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchBackup(Lcom/samsung/android/settings/eternal/data/BackupInfo;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v3}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->compressToGzip(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    new-instance p2, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;

    const/4 v8, 0x1

    invoke-direct {p2, p3, v8}, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;I)V

    invoke-static {p1, v6, v7, v5, p2}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, p0, v2}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "backup() Success took : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->complete(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    const-string p1, "backup() IOException"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->complete(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3, p0, v2}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v3, p0, v2}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_2
    const-string p1, "backup() backupFile is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->complete(Z)V

    return-void
.end method

.method public final getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f142b60

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f142b60

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "Eternal/EternalService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/service/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 14

    move-object v8, p0

    move-object v0, p1

    move/from16 v7, p3

    const-string v1, "com.samsung.android.intent.action.REQUEST_CONVERT_SCLOUD_DATA"

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/samsung/android/lib/episode/EpisodeUtils;->isSettingAppSupportBnR()V

    const-string v3, "Eternal/EternalService"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "onStartCommand() action : null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.intent.action.SMART_SWITCH_RESTORE_COMPLETED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " / startId "

    const-string v11, "handleIntent() action : "

    if-eqz v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mRestoreFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance v0, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iget-object v1, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v7}, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/service/EternalService;Lcom/samsung/android/settings/eternal/controller/EternalController;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mRestoreFuture:Ljava/util/concurrent/Future;

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v0, "handleIntent() bundle is null"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v0, "handleIntent() - action is empty"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "handleIntent() - "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/eternal/utils/FileUtils;

    const-string v11, "SESSION_KEY"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "SECURITY_LEVEL"

    invoke-virtual {v5, v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v11, v6, Lcom/samsung/android/settings/eternal/utils/FileUtils;->mSessionKey:Ljava/lang/String;

    iput v12, v6, Lcom/samsung/android/settings/eternal/utils/FileUtils;->mSecurityLevel:I

    iput-object v6, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mFileUtils:Lcom/samsung/android/settings/eternal/utils/FileUtils;

    const-string v6, "ACTION"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v11, "com.samsung.android.intent.action.REQUEST_BACKUP_SETTINGS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "SOURCE"

    if-eqz v11, :cond_d

    const-string v1, "SAVE_PATH"

    if-ne v6, v10, :cond_8

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cancelBackup()"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    iget-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v7, v2}, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/eternal/service/EternalService;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_8
    const-string v4, "backupDataInternal()"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "EXPORT_SESSION_TIME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/settings/eternal/smartswitch/BnRDocumentStorageAccessHelper;->getPathUris(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "backupDataInternal() - uris is empty"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ge v2, v10, :cond_b

    aget-object v1, v0, v2

    iget-object v4, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "backupDataInternal() - permission error"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    add-int/2addr v2, v9

    goto :goto_0

    :cond_b
    iget-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "backupDataInternal() - Previous backup did not completed"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    new-instance v2, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iget-object v9, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v13, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;

    move-object v0, v13

    move-object v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v11

    move-object v6, v12

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/eternal/service/EternalService;Lcom/samsung/android/settings/eternal/controller/EternalController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    invoke-interface {v9, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    goto/16 :goto_3

    :cond_d
    const-string v5, "com.samsung.android.intent.action.REQUEST_RESTORE_SETTINGS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "FAST_TRACK"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v1, "FROM_REMOTE_SERVICE"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "RESTORE_RESTRICTED_LIST"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v2, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/samsung/android/settings/eternal/smartswitch/BnRDocumentStorageAccessHelper;->getPathUris(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "restoreDataInternal() - uris is empty"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_SETTINGS"

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v5, v6

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "restoreDataInternal() isFastTrack = "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " / isFromRemoteService = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mRestoreFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    new-instance v9, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iget-object v11, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;

    move-object v0, v12

    move-object v1, p0

    move v3, v4

    move-object v4, v5

    move-object v5, v9

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/eternal/service/EternalService;Ljava/util/List;ZLjava/util/ArrayList;Lcom/samsung/android/settings/eternal/controller/EternalController;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mRestoreFuture:Ljava/util/concurrent/Future;

    goto :goto_3

    :cond_10
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    const-string v4, "convertDataInternal()"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    iget-object v1, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v2}, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda2;-><init>(Landroid/content/Intent;Lcom/samsung/android/settings/eternal/controller/EternalController;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    :cond_12
    :goto_1
    const-string v0, "handleIntent() action : null"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_2
    iget-object v0, v8, Lcom/samsung/android/settings/eternal/service/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v7, v9}, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/eternal/service/EternalService;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return v10
.end method

.method public final restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "Eternal/EternalService"

    const-string/jumbo v2, "restore()"

    invoke-static {p0, v2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-instance v9, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;

    const/4 v10, 0x0

    invoke-direct {v9, p3, v10}, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;I)V

    invoke-static {v6, v7, v8, p2, v9}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;)V

    invoke-static {p1, v3}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->decompressFromGzip(Landroid/content/Context;Ljava/io/File;)V

    new-instance p2, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/samsung/android/settings/eternal/data/RestoreInfo;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object p1, v8, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRestoreFile:Ljava/io/File;

    iput-boolean v5, v8, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsFastTrack:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v8, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRestoreSkipList:Ljava/util/List;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x2

    iput p1, v8, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRequestFrom:I

    iput-boolean v5, v8, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsDeferred:Z

    iput-boolean v4, v8, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsNeedValidation:Z

    invoke-virtual {p2, v8}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchRestore(Lcom/samsung/android/settings/eternal/data/RestoreInfo;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->hasRestoreResult()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p3, v5}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->complete(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v3, p0, v2}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    :try_start_5
    const-string/jumbo p1, "restore() IOException"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->complete(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :goto_4
    invoke-virtual {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->complete(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "restore() Success took : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    invoke-static {v3, p0, v2}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "sendResponse() - action : "

    const-string v1, " / result : "

    const-string v2, " / errorCode : "

    invoke-static {p2, v0, p1, v1, v2}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Eternal/EternalService"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "RESULT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ERR_CODE"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "REQ_SIZE"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SOURCE"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
