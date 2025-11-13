.class Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$3;
.super Ljava/lang/Object;
.source "FileClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "client",
            "sourceKey",
            "extras"
        }
    .end annotation

    const-string p0, "is_success"

    .line 119
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 120
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->access$000()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] BACKUP_COMPLETE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setCanceled(Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    .line 123
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;->backupCompleted(Landroid/content/Context;)V

    .line 124
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setLastBackupTime(Ljava/lang/String;J)V

    goto :goto_0

    .line 126
    :cond_0
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;->backupFailed(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
