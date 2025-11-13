.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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

    move-object/from16 v1, p3

    move-object/from16 v0, p4

    const-string/jumbo v2, "timestamp"

    const-string/jumbo v3, "value"

    const-string v4, "key"

    const-string v5, ", "

    const-string v6, "] BACKUP_ITEM, item: "

    .line 172
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "to_upload_list"

    .line 174
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v9, "file_descriptor"

    .line 175
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    const-string v10, "is_success"

    const/4 v11, 0x0

    const-string v12, "["

    if-nez v9, :cond_0

    .line 177
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] BACKUP_ITEM, pfd is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v7

    :cond_0
    const-string/jumbo v13, "max_size"

    .line 181
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    if-eqz v8, :cond_1

    .line 183
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] BACKUP_ITEM, toUploadList: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    move-object/from16 v0, p2

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-object/from16 v11, p1

    invoke-interface {v0, v11, v8}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->backupItem(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_7

    .line 192
    :cond_2
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] BACKUP_ITEM, count: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 194
    :try_start_0
    new-instance v11, Ljava/io/FileWriter;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    .line 198
    invoke-virtual {v11, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 199
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;

    .line 200
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v15

    .line 201
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getSize()J

    move-result-wide v17

    .line 202
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 p1, v8

    .line 203
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v19, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v15, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 207
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    move v5, v6

    .line 210
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 211
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;

    if-nez v8, :cond_3

    .line 213
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] BACKUP_ITEM, item is incorrect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", return err"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v7, v10, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    .line 242
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v7

    .line 218
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getSize()J

    move-result-wide v22

    add-long v22, v17, v22

    cmp-long v13, v22, v19

    if-ltz v13, :cond_4

    goto :goto_2

    .line 220
    :cond_4
    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, p1, v5

    .line 221
    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getSize()J

    move-result-wide v22

    add-long v17, v17, v22

    const-string v13, ","

    .line 222
    invoke-virtual {v11, v13}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p4, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v14

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v0

    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {v15, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 227
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p3

    move-object/from16 v0, p4

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    const-string v0, "]"

    .line 230
    invoke-virtual {v11, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v11}, Ljava/io/FileWriter;->flush()V

    const/4 v0, 0x1

    .line 232
    invoke-virtual {v7, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "local_id"

    move-object/from16 v1, p1

    .line 233
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    .line 242
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v11

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v11

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 235
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v7, v10, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_6

    .line 240
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    .line 242
    :cond_6
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v7

    :goto_5
    if-eqz v8, :cond_7

    .line 240
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    .line 242
    :cond_7
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    :goto_6
    throw v1

    :cond_8
    :goto_7
    move-object v3, v1

    .line 188
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] BACKUP_ITEM, value is incorrect, return err"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v7, v10, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v7
.end method
