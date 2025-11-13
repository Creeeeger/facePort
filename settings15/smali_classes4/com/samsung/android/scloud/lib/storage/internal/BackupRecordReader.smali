.class public final Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordReader;
.super Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getRecordDataSetList()Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser;->toJSONObject(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string/jumbo v5, "record"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    new-instance v5, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    new-instance v7, Lcom/samsung/android/scloud/lib/storage/data/Header;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/samsung/android/scloud/lib/storage/data/Header;->recordId:Ljava/lang/String;

    iput-wide v3, v7, Lcom/samsung/android/scloud/lib/storage/data/Header;->timeStamp:J

    new-instance v2, Lcom/samsung/android/scloud/lib/storage/data/Body;

    invoke-static {v1}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->getFileList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v6, v1}, Lcom/samsung/android/scloud/lib/storage/data/Body;-><init>(Lorg/json/JSONObject;Ljava/util/List;)V

    invoke-direct {v5, v7, v2}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;-><init>(Lcom/samsung/android/scloud/lib/storage/data/Header;Lcom/samsung/android/scloud/lib/storage/data/Body;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRecordDataSetList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRecordReader"

    invoke-static {v2, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
