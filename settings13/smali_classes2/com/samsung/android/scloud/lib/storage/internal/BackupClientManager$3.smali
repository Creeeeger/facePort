.class Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$3;
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

    .line 67
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$3;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$3;->val$recordDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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

    .line 70
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] BACKUP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "meta_pfd"

    .line 71
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$3;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getUploadKeyList(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p4

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_0

    .line 78
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] BACKUP: meta_pfd is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_0
    new-instance p3, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordWriter;

    invoke-direct {p3, p2}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordWriter;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 83
    :try_start_0
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BACKUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->start()V

    .line 86
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$3;->val$recordDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 90
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getRecordId()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getTimeStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getBody()Lcom/samsung/android/scloud/lib/storage/data/Body;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/scloud/lib/storage/data/Body;->getItemData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getBody()Lcom/samsung/android/scloud/lib/storage/data/Body;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/Body;->getFileList()Ljava/util/List;

    move-result-object p1

    .line 91
    invoke-virtual {p3, p2, p4, v1, p1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordWriter;->addRecordAndFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 100
    :goto_1
    :try_start_1
    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    .line 101
    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string p1, "is_success"

    .line 106
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 100
    :try_start_2
    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    .line 101
    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    :goto_3
    throw p0
.end method
