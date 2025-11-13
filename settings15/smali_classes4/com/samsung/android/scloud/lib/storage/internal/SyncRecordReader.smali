.class public final Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordReader;
.super Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getRecordDataSetList()Ljava/util/List;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser;->toJSONObject(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "records"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "record"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "resultString : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SyncRecordReader"

    invoke-static {v7, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "record_id"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v5, Lcom/samsung/android/scloud/lib/storage/data/Header;

    const/4 v11, 0x0

    const-string/jumbo v12, "normal"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/scloud/lib/storage/data/Header;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/scloud/lib/storage/data/Body;

    invoke-static {v4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->getFileList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v6, v4}, Lcom/samsung/android/scloud/lib/storage/data/Body;-><init>(Lorg/json/JSONObject;Ljava/util/List;)V

    new-instance v4, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;

    invoke-direct {v4, v5, v7}, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;-><init>(Lcom/samsung/android/scloud/lib/storage/data/Header;Lcom/samsung/android/scloud/lib/storage/data/Body;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method
