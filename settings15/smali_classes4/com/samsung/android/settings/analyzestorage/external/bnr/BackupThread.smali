.class public final Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;
.super Ljava/lang/Thread;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sBackupTargetFiles:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDestinationPath:Ljava/lang/String;

.field public final mSecurityLevel:I

.field public final mSessionTime:Ljava/lang/String;

.field public final mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "manage_storage.db-shm"

    const-string v1, "manage_storage.db-wal"

    const-string v2, "manage_storage.db"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->sBackupTargetFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mContext:Landroid/content/Context;

    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->destinationPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mDestinationPath:Ljava/lang/String;

    iget p1, p2, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->securityLevel:I

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mSecurityLevel:I

    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->requestFrom:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mSource:Ljava/lang/String;

    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->exportSessionTime:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mSessionTime:Ljava/lang/String;

    iget-object p0, p2, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->encryptionKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->streamCrypt(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mDestinationPath:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "createBackupFolderIfNotExist() ] Try to create Backup Folder. result : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupThread"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;->getGenerator()Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;->getAppRepository(Ljava/lang/Object;)Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->getAppInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, v2, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mUnusedAppBnRInfoDao:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mUnusedAppBnRInfoDao:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v5, v5, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v6}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mUnusedAppBnRInfoDao:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3}, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;Ljava/util/List;)V

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v2, v8, v7, v5}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->sBackupTargetFiles:[Ljava/lang/String;

    move v3, v8

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_3

    aget-object v6, v2, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v2, "BackupThread"

    const-string/jumbo v3, "run() ] Current Job is interrupted. So, exit."

    invoke-static {v2, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mDestinationPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v11, "BACKUP#"

    invoke-static {v9, v10, v11, v6}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "BackupThread"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "run() ] source : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " , destinationFile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget v9, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mSecurityLevel:I

    invoke-static {v5, v6, v9}, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "BackupThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "run() ] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not created."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "BackupThread"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "run() ] IOException e : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    if-ne v5, v4, :cond_4

    move v7, v8

    :cond_4
    const-string v2, "BackupThread"

    const-string/jumbo v3, "run() ] successCount : "

    const-string v5, " , errCode : "

    const-string v6, ". Elapsed Time : "

    invoke-static {v3, v5, v4, v7, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_MANAGE_STORAGE_SETTING"

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mSource:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;->mSessionTime:Ljava/lang/String;

    invoke-static {v0, v1, v7, v2, p0}, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils;->sendBnrResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
