.class Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$3;
.super Ljava/lang/Object;
.source "SyncClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;-><init>(Landroid/content/Context;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

.field final synthetic val$syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$syncDataClient"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$3;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$3;->val$syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
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
            "name",
            "extras"
        }
    .end annotation

    const-string p2, "UPLOAD error : "

    .line 86
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] UPLOAD"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "record_pfd"

    .line 89
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v1, "record_id"

    .line 90
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "local_id"

    .line 91
    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    if-eqz v0, :cond_3

    .line 96
    new-instance v4, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;

    invoke-direct {v4, v0}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 98
    :try_start_0
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->start()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    array-length v6, p4

    :goto_0
    if-ge v3, v6, :cond_0

    .line 103
    aget-object v7, p4, v3

    aget-object v8, v2, v3

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    aget-object v7, p4, v3

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$3;->val$syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-interface {p0, p1, v5}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 107
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;->openObject()V

    .line 108
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    .line 109
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object p4

    const-string v2, "dataSet : "

    invoke-static {p4, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getBody()Lcom/samsung/android/scloud/lib/storage/data/Body;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/data/Body;->getItemData()Lorg/json/JSONObject;

    move-result-object p4

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getHeader()Lcom/samsung/android/scloud/lib/storage/data/Header;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getRecordId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 114
    invoke-virtual {v2}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getLocalId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    invoke-virtual {p4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getTimeStamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->getBody()Lcom/samsung/android/scloud/lib/storage/data/Body;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/storage/data/Body;->getFileList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, v3, v2, p4, p1}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;->addRecordAndFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    .line 125
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 127
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 121
    :try_start_2
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPLOAD parsing error : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :try_start_3
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    .line 125
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 127
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v3, 0x1

    goto :goto_6

    .line 124
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->end()V

    .line 125
    invoke-virtual {v4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 127
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_5
    throw p0

    :cond_3
    :goto_6
    const-string p0, "is_success"

    .line 131
    invoke-virtual {p3, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p3
.end method
