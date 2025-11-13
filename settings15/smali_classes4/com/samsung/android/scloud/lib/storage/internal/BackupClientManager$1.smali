.class public final Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

.field public final synthetic val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    iget p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] RESTORE_COMPLETE"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BackupClientManager"

    invoke-static {p3, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    const-string p4, "Restore"

    invoke-virtual {p3, p1, p4, p2}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    iget-object p2, p2, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->recordDataSetList:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->setData(Landroid/content/Context;Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] DOWNLOAD_COMPLETE true"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupClientManager"

    invoke-static {p1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    const-string p2, "["

    const-string v0, "] RESTORE"

    const-string v1, "BackupClientManager"

    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "meta_pfd"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    const-string v3, "download_path_map_pfd"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordReader;

    invoke-direct {v3, v2}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object v2, v3, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

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
    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordReader;->getRecordDataSetList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->recordDataSetList:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p4, p0}, Lcom/samsung/android/scloud/lib/storage/internal/IpcDataHandler;->write(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] RESTORE "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    const-string p1, "is_success"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] RESTORE_PREPARE"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BackupClientManager"

    invoke-static {v0, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    if-eqz p4, :cond_1

    const-string v0, "messenger"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Messenger;

    iget-object p4, p2, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;->recordDataHelper:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    iput-object p3, p4, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->sourceKey:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    const-string p3, "Restore"

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] BACKUP_COMPLETE"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BackupClientManager"

    invoke-static {p3, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    const-string p4, "Backup"

    invoke-virtual {p3, p1, p4, p2}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_4
    const-string p2, "BACKUP "

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] BACKUP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupClientManager"

    invoke-static {v2, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "meta_pfd"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CommonClientManager"

    const-string/jumbo v4, "upload_key_list_pfd"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-direct {v4, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance p4, Ljava/io/ObjectInputStream;

    invoke-direct {p4, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] getUploadKeyList file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catchall_0
    move-exception p4

    goto :goto_4

    :catchall_1
    move-exception v5

    :try_start_7
    invoke-virtual {p4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p4

    :try_start_8
    invoke-virtual {v5, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v4

    :try_start_a
    invoke-virtual {p4, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p4
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] can\'t read uploadKeyList"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v4, 0x0

    invoke-static {v3, p4, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] BACKUP: meta_pfd is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_3
    new-instance p3, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordWriter;

    invoke-direct {p3, v0}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p3, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz p2, :cond_4

    :try_start_c
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_7

    :catch_3
    move-exception p2

    :try_start_d
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    iget-object p2, p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->header:Lcom/samsung/android/scloud/lib/storage/data/Header;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->body:Lcom/samsung/android/scloud/lib/storage/data/Body;

    :try_start_e
    iget-object v0, p2, Lcom/samsung/android/scloud/lib/storage/data/Header;->recordId:Ljava/lang/String;

    iget-wide v1, p2, Lcom/samsung/android/scloud/lib/storage/data/Header;->timeStamp:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lcom/samsung/android/scloud/lib/storage/data/Body;->itemData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/storage/data/Body;->fileList:Ljava/util/List;

    invoke-virtual {p3, v0, p2, v1, p1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordWriter;->addRecordAndFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p0

    goto :goto_b

    :cond_5
    :try_start_f
    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_9

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    const-string p0, "is_success"

    const/4 p1, 0x1

    invoke-virtual {p4, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_a
    return-object p4

    :goto_b
    :try_start_10
    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    invoke-virtual {p3}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_c

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    throw p0

    :pswitch_5
    const-string/jumbo p2, "pfd"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-object v1, v0, Lcom/samsung/android/scloud/lib/storage/data/Header;->recordId:Ljava/lang/String;

    iget-wide v2, v0, Lcom/samsung/android/scloud/lib/storage/data/Header;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_6
    if-eqz p2, :cond_7

    invoke-static {p2, p4}, Lcom/samsung/android/scloud/lib/storage/internal/IpcDataHandler;->write(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_e

    :cond_7
    const/4 p1, 0x0

    :goto_e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] GET_KEY_AND_DATE "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BackupClientManager"

    invoke-static {p3, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] BACKUP_PREPARE"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BackupClientManager"

    invoke-static {p3, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->val$recordDataClient:Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    const-string p3, "Backup"

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "result"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_8

    goto :goto_f

    :cond_8
    const/4 p2, 0x0

    :goto_f
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$1;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
