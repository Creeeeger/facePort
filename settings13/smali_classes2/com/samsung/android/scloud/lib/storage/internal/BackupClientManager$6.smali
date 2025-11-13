.class Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6;
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

    .line 135
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6;->val$recordDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
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

    .line 138
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] RESTORE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "meta_pfd"

    .line 141
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string v2, "download_path_map_pfd"

    .line 142
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 144
    new-instance v2, Lcom/samsung/android/scloud/lib/storage/internal/IpcDataHandler;

    invoke-direct {v2}, Lcom/samsung/android/scloud/lib/storage/internal/IpcDataHandler;-><init>()V

    .line 146
    new-instance v3, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordReader;

    invoke-direct {v3, v0}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordReader;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 147
    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->start()V

    const/4 v4, 0x0

    .line 149
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordReader;->getRecordDataSetList()Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$202(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;Ljava/util/List;)Ljava/util/List;

    .line 150
    iget-object v3, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6;->val$recordDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    iget-object v5, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-static {v5}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$200(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getDownloadPathMap(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 151
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$200(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3, p1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$300(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$202(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 152
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_1
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v2, p4, p1}, Lcom/samsung/android/scloud/lib/storage/internal/IpcDataHandler;->write(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 160
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] RESTORE "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string p0, "is_success"

    .line 163
    invoke-virtual {p2, p0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2
.end method
