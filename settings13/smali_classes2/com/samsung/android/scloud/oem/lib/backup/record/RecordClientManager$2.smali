.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;
.super Ljava/lang/Object;
.source "RecordClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v1, p4

    .line 111
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] GET_RECORD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "is_success"

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "record_pfd"

    .line 114
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/os/ParcelFileDescriptor;

    const-string v3, "idlist_file"

    .line 115
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    if-eqz v11, :cond_3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 123
    :cond_0
    iget-object v4, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :cond_1
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v5, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v4, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    new-instance v5, Landroid/util/JsonReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v12

    const-string/jumbo v3, "observing_uri"

    .line 131
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v1, 0x1

    new-array v3, v1, [J

    const-wide/16 v13, 0x0

    aput-wide v13, v3, v2

    const/4 v13, 0x0

    .line 135
    :try_start_0
    new-instance v14, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;

    new-instance v15, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v15, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    new-instance v16, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2$1;

    move-wide/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;[JLjava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v15

    move-wide/from16 v4, v17

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/JsonWriter;JLcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    invoke-virtual {v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->open()V

    .line 148
    move-object/from16 v0, p2

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14, v12}, Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;->backupRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;Ljava/util/ArrayList;)Z

    move-result v1

    .line 149
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] backupRecord: onCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-virtual {v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    .line 155
    :try_start_2
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 157
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    :goto_0
    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v9

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v14

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_1
    if-eqz v13, :cond_2

    .line 152
    invoke-virtual {v13}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    .line 155
    :cond_2
    :try_start_3
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 157
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    :goto_2
    throw v1

    .line 120
    :cond_3
    :goto_3
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] pfd is null or uploadList is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method
