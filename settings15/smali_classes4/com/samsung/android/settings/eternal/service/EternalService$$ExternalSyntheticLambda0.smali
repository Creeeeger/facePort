.class public final synthetic Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

.field public final synthetic f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/service/EternalService;Lcom/samsung/android/settings/eternal/controller/EternalController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;

    iput p3, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v7, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;

    iget p0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda0;->f$2:I

    sget v1, Lcom/samsung/android/settings/eternal/service/EternalService;->$r8$clinit:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "SettingsBackup.xml"

    const-string v9, "deferredRestoreDataInternal() "

    :try_start_0
    new-instance v1, Lcom/samsung/android/settings/eternal/database/DatabaseManager;

    iget-object v2, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getBackupSceneMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    iget-object v1, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRestoreFile:Ljava/io/File;

    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsFastTrack:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRestoreSkipList:Ljava/util/List;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v1, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRequestFrom:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsDeferred:Z

    iput-boolean v2, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsNeedValidation:Z

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchRestore(Lcom/samsung/android/settings/eternal/data/RestoreInfo;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    move-result-object v0

    const-string v3, "com.samsung.android.intent.action.RESPONSE_RESTORE_SETTINGS"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->hasRestoreResult()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    move v5, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->hasRestoreResult()Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v7

    move-object v1, v3

    move v2, v5

    move v3, v6

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/service/EternalService;->deleteFiles(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_4

    :goto_3
    :try_start_1
    const-string v1, "Eternal/EternalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    iget-object v1, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/service/EternalService;->deleteFiles(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Landroid/app/Service;->stopSelf(I)V

    throw v0
.end method
