.class Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$5;
.super Ljava/lang/Object;
.source "BackupClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;-><init>(Landroid/content/Context;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

.field final synthetic val$recordDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$recordDataClient"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$5;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$5;->val$recordDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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

    .line 123
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] RESTORE_PREPARE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string/jumbo p2, "messenger"

    .line 126
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Messenger;

    .line 127
    iget-object p4, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$5;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-static {p4}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$100(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;)Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    move-result-object p4

    invoke-virtual {p4, p3, p2}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->setAgentMessenger(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 130
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$5;->val$recordDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    const-string p3, "Restore"

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 131
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$5;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    const-string/jumbo p2, "result"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
