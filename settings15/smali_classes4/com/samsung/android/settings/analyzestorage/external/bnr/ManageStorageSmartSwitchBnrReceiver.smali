.class public final Lcom/samsung/android/settings/analyzestorage/external/bnr/ManageStorageSmartSwitchBnrReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/external/bnr/ManageStorageSmartSwitchBnrReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ManageStorageSmartSwitchBnrReceiver"

    if-nez p2, :cond_0

    const-string/jumbo p1, "onReceive() ] intent is null."

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive() ] action : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "SAVE_PATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->destinationPath:Ljava/lang/String;

    const-string v2, "ACTION"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->detailAction:I

    const-string v2, "SESSION_KEY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->encryptionKey:Ljava/lang/String;

    const-string v2, "SOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->requestFrom:Ljava/lang/String;

    const-string v2, "EXPORT_SESSION_TIME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->exportSessionTime:Ljava/lang/String;

    const-string v2, "SECURITY_LEVEL"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->securityLevel:I

    const-string p2, "com.samsung.android.intent.action.REQUEST_BACKUP_MANAGE_STORAGE_SETTING"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    const-string v3, "SmartSwitchBnrManager"

    if-eqz p2, :cond_6

    iget-object p2, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->destinationPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils;->isValidDestinationPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->detailAction:I

    if-nez p0, :cond_3

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/SmartSwitchBnrManager;->backupThread:Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-ne p0, v2, :cond_2

    const-string/jumbo p0, "startBackup() ] SmartSwitch Backup is already in progress."

    invoke-static {v3, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;)V

    sput-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/SmartSwitchBnrManager;->backupThread:Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x2

    if-ne p0, p1, :cond_9

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/SmartSwitchBnrManager;->backupThread:Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-ne p0, v2, :cond_4

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/SmartSwitchBnrManager;->backupThread:Lcom/samsung/android/settings/analyzestorage/external/bnr/BackupThread;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    const-string p0, "cancelBackup() ] Try to delete "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils;->deleteBnrFiles(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handleBackupRequest() ] Invalid Destination Path - BnrParam : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p2, "com.samsung.android.intent.action.REQUEST_RESTORE_MANAGE_STORAGE_SETTING"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;->destinationPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils;->isValidDestinationPath(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p2

    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p2

    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getVersion()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "createDatabaseIfNotExist() ] manageStorageDBVersion : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/SmartSwitchBnrManager;->restoreThread:Lcom/samsung/android/settings/analyzestorage/external/bnr/RestoreThread;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-ne p0, v2, :cond_7

    const-string/jumbo p0, "startRestore() ] Smart Switch Restore is already in progress"

    invoke-static {v3, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/RestoreThread;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/analyzestorage/external/bnr/RestoreThread;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrParam;)V

    sput-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/SmartSwitchBnrManager;->restoreThread:Lcom/samsung/android/settings/analyzestorage/external/bnr/RestoreThread;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handleRestoreRequest() ] Invalid Destination Path - BnrParam : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method
