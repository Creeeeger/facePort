.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$5;
.super Ljava/lang/Object;
.source "RecordClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$5;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "client",
            "sourceKey",
            "extras"
        }
    .end annotation

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_success"

    .line 265
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    .line 266
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setCanceled(Ljava/lang/String;Z)V

    .line 267
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$5;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 269
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 278
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p3, v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setLastBackupTime(Ljava/lang/String;J)V

    .line 279
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;->backupCompleted(Landroid/content/Context;)V

    goto :goto_1

    .line 281
    :cond_2
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;->backupFailed(Landroid/content/Context;)V

    .line 283
    :goto_1
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] BACKUP_COMPLETE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
