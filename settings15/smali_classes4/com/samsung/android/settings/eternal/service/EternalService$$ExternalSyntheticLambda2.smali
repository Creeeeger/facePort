.class public final synthetic Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Lcom/samsung/android/settings/eternal/controller/EternalController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda2;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda2;->f$0:Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/service/EternalService$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/eternal/controller/EternalController;

    sget v1, Lcom/samsung/android/settings/eternal/service/EternalService;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "convertType"

    const-string/jumbo v2, "sCloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "## fetchConvertData() : uid = Accessibility"

    const-string v2, "Eternal/EternalController"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "convertData ["

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mSupplierManager:Lcom/samsung/android/settings/eternal/manager/SupplierManager;

    iget-object v3, v2, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    const-string v4, "Accessibility"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mUri:Landroid/net/Uri;

    :goto_0
    const-string v3, "Eternal/EternalManager"

    if-nez v2, :cond_1

    const-string p0, "convertData() uri of uid - Accessibility is null"

    invoke-static {v3, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] contentProviderClient is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const-string v1, "convert_data"

    invoke-virtual {v4, v1, v5, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/scloud/AccessibilityBackupRestoreClient;->removeRestoreFile(Landroid/content/Context;)V

    goto :goto_5

    :goto_3
    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    :try_start_5
    const-string v0, "convertData() - Exception Uid =Accessibility"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :goto_5
    return-void

    :goto_6
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/scloud/AccessibilityBackupRestoreClient;->removeRestoreFile(Landroid/content/Context;)V

    throw v0
.end method
