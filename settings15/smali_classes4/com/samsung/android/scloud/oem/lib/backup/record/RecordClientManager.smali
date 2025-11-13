.class public final Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public dataDirectory:Ljava/lang/String;

.field public final pfdMap:Ljava/util/Map;

.field public final processedKeyMap:Ljava/util/Map;

.field public final serviceHandlerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string v2, "getKeyAndDate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string v2, "getRecord"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string/jumbo v2, "putRecord"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string v2, "backupPrepare"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string v2, "backupComplete"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string/jumbo v2, "restorePrepare"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string/jumbo v2, "restoreComplete"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;-><init>(I)V

    const-string v2, "deleteRestoreFile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;-><init>(I)V

    const-string v2, "completeFile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string/jumbo v2, "restoreFile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;-><init>(I)V

    const-string v2, "checkAndUpdateReuseDB"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V

    const-string p0, "clearReuseFileDB"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;-><init>(I)V

    const-string/jumbo v1, "requestCancel"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    return-object p0

    :goto_5
    :try_start_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    throw p0
.end method

.method public static access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->dataDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->dataDirectory:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getClient()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object p0
.end method
