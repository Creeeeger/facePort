.class public final synthetic Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Lcom/samsung/android/settings/eternal/controller/EternalController;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/service/EternalService;Ljava/util/List;ZLjava/util/ArrayList;Lcom/samsung/android/settings/eternal/controller/EternalController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$2:Z

    iput-object p4, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$4:Lcom/samsung/android/settings/eternal/controller/EternalController;

    iput-object p6, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iget-object v1, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    iget-boolean v2, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$2:Z

    iget-object v3, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$3:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$4:Lcom/samsung/android/settings/eternal/controller/EternalController;

    iget-object v8, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$5:Ljava/lang/String;

    iget v9, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda6;->f$6:I

    sget v0, Lcom/samsung/android/settings/eternal/service/EternalService;->$r8$clinit:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "Eternal/EternalService"

    const-string v11, "SettingsBackup.xml"

    const-string/jumbo v12, "restoreDataInternal() "

    const-string v0, "fileSize = "

    const-string/jumbo v5, "restoreDataInternal() Copy uri : "

    :try_start_0
    iget-object v6, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    const/4 v13, 0x1

    invoke-interface {v1, v13, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    iget-object v13, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-static {v6, v14, v15, v13}, Lcom/samsung/android/settings/eternal/smartswitch/BnRDocumentStorageAccessHelper;->moveUrisToDir(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Collection;Ljava/io/File;)I

    move-result v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / copyCount = "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mFileUtils:Lcom/samsung/android/settings/eternal/utils/FileUtils;

    iget-object v5, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v5, v11}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->decrypt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRestoreFile:Ljava/io/File;

    iput-boolean v2, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsFastTrack:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRestoreSkipList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput v0, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRequestFrom:I

    iput-boolean v0, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsDeferred:Z

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsNeedValidation:Z

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchRestore(Lcom/samsung/android/settings/eternal/data/RestoreInfo;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    move-result-object v2

    const-string v3, "com.samsung.android.intent.action.RESPONSE_RESTORE_SETTINGS"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->hasRestoreResult()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->hasRestoreResult()Z

    move-result v2

    if-eqz v2, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    const/4 v13, 0x0

    move-object v0, v7

    move-object v1, v3

    move v2, v4

    move v3, v6

    move v4, v5

    move-object v5, v8

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/service/EternalService;->deleteFiles(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_4

    :goto_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    iget-object v1, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/service/EternalService;->deleteFiles(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/app/Service;->stopSelf(I)V

    throw v0
.end method
