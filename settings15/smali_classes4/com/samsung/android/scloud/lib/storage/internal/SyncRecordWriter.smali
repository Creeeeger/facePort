.class public final Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordWriter;
.super Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final addRecordAndFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    const-string/jumbo p2, "record"

    invoke-virtual {p1, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    const-string p2, "files"

    invoke-virtual {p1, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iget-object p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    const-string/jumbo p4, "path"

    invoke-virtual {p3, p4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    const-string/jumbo p4, "size"

    invoke-virtual {p3, p4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object p3, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    const-string p4, "hash"

    invoke-virtual {p3, p4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p3

    invoke-static {p2}, Lcom/samsung/android/scloud/oem/lib/utils/HashUtil;->getFileSHA256(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "SyncRecordWriter"

    const-string p2, "addRecordAndFiles "

    invoke-static {p1, p2, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final openObject()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    const-string/jumbo v1, "records"

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
