.class public final Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

.field public final synthetic val$syncDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->val$syncDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string p2, "["

    const-string v0, "] DOWNLOAD"

    const-string v1, "SyncClientManager"

    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "record_pfd"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    const-string v3, "messenger"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Messenger;

    iget-object p4, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

    iget-object p4, p4, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->recordDataHelper:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    iput-object p3, p4, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->sourceKey:Ljava/lang/String;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordReader;

    invoke-direct {p4, v2}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object v2, p4, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordReader;->getRecordDataSetList()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->val$syncDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->setData(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->close()V

    const/4 p0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] DOWNLOAD "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->close()V

    const/4 p0, 0x0

    :goto_1
    const-string p1, "is_success"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :goto_2
    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->close()V

    throw p0
.end method
