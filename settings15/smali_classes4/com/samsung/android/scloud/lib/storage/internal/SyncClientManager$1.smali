.class public final Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$syncDataClient:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->val$syncDataClient:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    iget p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->val$syncDataClient:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p3}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getFileDescriptor(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p2, "["

    const-string v0, "] FINISH"

    const-string v1, "SyncClientManager"

    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->val$syncDataClient:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    const-string/jumbo p3, "sync"

    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2

    :pswitch_1
    const-string p2, "["

    const-string v0, "] UPLOAD_COMPLETE"

    const-string v1, "SyncClientManager"

    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "record_id"

    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const-string v0, "local_id"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v7, p3, v1

    aget-object v8, p4, v1

    new-instance v3, Lcom/samsung/android/scloud/lib/storage/data/Header;

    const-wide/16 v5, 0x0

    const-string/jumbo v9, "uploadComplete"

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/scloud/lib/storage/data/Header;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;-><init>(Lcom/samsung/android/scloud/lib/storage/data/Header;Lcom/samsung/android/scloud/lib/storage/data/Body;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->val$syncDataClient:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-virtual {v3, p1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->setData(Landroid/content/Context;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    const-string p0, "is_success"

    invoke-virtual {p2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2

    :pswitch_2
    const-string p2, "["

    const-string v0, "] DELETE"

    const-string v1, "SyncClientManager"

    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "record_id"

    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v5, p3, v1

    new-instance v8, Lcom/samsung/android/scloud/lib/storage/data/Header;

    const-string v7, "delete"

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/scloud/lib/storage/data/Header;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;-><init>(Lcom/samsung/android/scloud/lib/storage/data/Header;Lcom/samsung/android/scloud/lib/storage/data/Body;)V

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->val$syncDataClient:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->setData(Landroid/content/Context;Ljava/util/List;)V

    const-string p0, "is_success"

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2

    :pswitch_3
    const-string p2, "UPLOAD error : "

    const-string v0, "["

    const-string v1, "] UPLOAD"

    const-string v2, "SyncClientManager"

    invoke-static {v0, p3, v1, v2}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    const-string/jumbo v0, "record_pfd"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v1, "record_id"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "local_id"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    if-eqz p4, :cond_8

    if-eqz v0, :cond_8

    new-instance v5, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;

    invoke-direct {v5, v0}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v6, v5, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    :try_start_1
    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, p4

    :goto_3
    if-ge v4, v8, :cond_4

    aget-object v9, p4, v4

    aget-object v10, v3, v4

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v9, p4, v4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_1
    move-exception p0

    goto/16 :goto_7

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->val$syncDataClient:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v5}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;->openObject()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    const-string p4, "dataSet : "

    invoke-static {v2, p4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->body:Lcom/samsung/android/scloud/lib/storage/data/Body;

    iget-object p4, p4, Lcom/samsung/android/scloud/lib/storage/data/Body;->itemData:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->header:Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-object v4, v3, Lcom/samsung/android/scloud/lib/storage/data/Header;->recordId:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/samsung/android/scloud/lib/storage/data/Header;->localId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p4, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-wide v7, v3, Lcom/samsung/android/scloud/lib/storage/data/Header;->timeStamp:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->body:Lcom/samsung/android/scloud/lib/storage/data/Body;

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/storage/data/Body;->fileList:Ljava/util/List;

    invoke-virtual {v5, v4, v3, p4, p1}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;->addRecordAndFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :cond_6
    iget-object p0, v5, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_7

    :try_start_3
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    iget-object p0, v5, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    iget-object p0, v5, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_2
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_5
    :try_start_5
    invoke-virtual {v5}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    invoke-virtual {v5}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "UPLOAD parsing error : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v5}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    invoke-virtual {v5}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_8
    const/4 v4, 0x1

    goto :goto_b

    :goto_9
    :try_start_8
    invoke-virtual {v5}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    invoke-virtual {v5}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_a

    :catch_5
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    throw p0

    :cond_8
    :goto_b
    const-string p0, "is_success"

    invoke-virtual {p3, p0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p3

    :pswitch_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] GET_LOCAL_CHANGES"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SyncClientManager"

    invoke-static {p3, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->val$syncDataClient:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_a

    new-array p3, p2, [Ljava/lang/String;

    new-array p4, p2, [J

    new-array v0, p2, [Ljava/lang/String;

    new-array v1, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_c
    if-ge v2, p2, :cond_9

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/scloud/lib/storage/data/Header;

    iget-object v4, v3, Lcom/samsung/android/scloud/lib/storage/data/Header;->localId:Ljava/lang/String;

    aput-object v4, p3, v2

    iget-object v4, v3, Lcom/samsung/android/scloud/lib/storage/data/Header;->recordId:Ljava/lang/String;

    aput-object v4, v1, v2

    iget-wide v4, v3, Lcom/samsung/android/scloud/lib/storage/data/Header;->timeStamp:J

    aput-wide v4, p4, v2

    iget-object v3, v3, Lcom/samsung/android/scloud/lib/storage/data/Header;->statue:Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_9
    const-string p0, "local_id"

    invoke-virtual {p1, p0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p0, "record_id"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p0, "timestamp"

    invoke-virtual {p1, p0, p4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo p0, "status"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_a
    const-string p0, "is_success"

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] Sync Prepare"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SyncClientManager"

    invoke-static {p3, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;->val$syncDataClient:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;

    const-string p2, "Sync"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/scloud/SCloudWifiConfigSyncImpl;->prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
