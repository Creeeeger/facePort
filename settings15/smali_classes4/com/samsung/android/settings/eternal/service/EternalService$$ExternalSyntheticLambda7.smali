.class public final synthetic Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

.field public final synthetic f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/service/EternalService;Lcom/samsung/android/settings/eternal/controller/EternalController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;

    iput-object p3, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$5:Ljava/util/List;

    iput p7, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/eternal/service/EternalService;

    iget-object v1, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;

    iget-object v8, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$4:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$5:Ljava/util/List;

    iget v10, v0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda7;->f$6:I

    sget v0, Lcom/samsung/android/settings/eternal/service/EternalService;->$r8$clinit:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "Eternal/EternalService"

    const-string v12, "SettingsBackup.xml"

    const-string v13, "backupDataInternal() "

    const-string v0, "backupDataInternal() Copy uri : "

    const-string v4, "backupDataInternal() Available space : "

    :try_start_0
    new-instance v5, Lcom/samsung/android/settings/eternal/data/BackupInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput v6, v5, Lcom/samsung/android/settings/eternal/data/BackupInfo;->mRequestFrom:I

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchBackup(Lcom/samsung/android/settings/eternal/data/BackupInfo;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmp-long v5, v14, v16

    if-gez v5, :cond_1

    :cond_0
    move-object/from16 v16, v13

    goto/16 :goto_4

    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v14

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v5, v14, v1

    if-gez v5, :cond_2

    const-string v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    long-to-int v4, v1

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, v3

    move v3, v5

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/service/EternalService;->deleteFiles(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_5

    :cond_2
    :try_start_1
    iget-object v5, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mFileUtils:Lcom/samsung/android/settings/eternal/utils/FileUtils;

    iget-object v6, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v13

    :try_start_2
    invoke-static {v6, v12}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v6, v13}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->encrypt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " / backupFileSize : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " / encrypt size : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ge v5, v4, :cond_3

    const-string v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    long-to-int v4, v1

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, v3

    move v3, v5

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget-object v1, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-static {v1, v2, v13}, Lcom/samsung/android/settings/eternal/smartswitch/BnRDocumentStorageAccessHelper;->copyFileToDirUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)I

    move-result v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / copyCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    if-lez v6, :cond_5

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    if-lez v6, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    move-object v0, v7

    move v4, v5

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_4
    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, v7

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, v7

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/eternal/service/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :goto_6
    return-void

    :goto_7
    iget-object v1, v7, Lcom/samsung/android/settings/eternal/service/EternalService;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFileFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/service/EternalService;->deleteFiles(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/app/Service;->stopSelf(I)V

    throw v0
.end method
