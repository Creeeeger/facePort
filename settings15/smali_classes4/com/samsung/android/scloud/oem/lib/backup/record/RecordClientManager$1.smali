.class public final Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v4, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "is_success"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    iget-object v0, v4, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] RESTORE_COMPLETE: isSuccess: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", processedKeyListSize: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "RecordClientManager"

    invoke-static {v6, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setCanceled(Ljava/lang/String;Z)V

    iget-object v0, v4, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-eqz v3, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getReusePathList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-static {v4, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->clearReuseFile(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    check-cast v5, Ljava/util/ArrayList;

    throw v0

    :cond_4
    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    check-cast v5, Ljava/util/ArrayList;

    throw v0

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] RESTORE_PREPARE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RecordClientManager"

    invoke-static {v4, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setCanceled(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    iget-object v1, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :pswitch_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v4, "is_success"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setCanceled(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    if-eqz v3, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] setLastBackupTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BackupMetaManager"

    invoke-static {v6, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_LAST_BACKUP_TIME"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v0

    :cond_7
    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v0

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] BACKUP_PREPARE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RecordClientManager"

    invoke-static {v4, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setCanceled(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :pswitch_3
    const-string v4, "] PUT_RECORD: result: "

    const-string/jumbo v5, "true"

    const-string v6, "["

    const-string v7, "] PUT_RECORD"

    const-string v8, "RecordClientManager"

    invoke-static {v6, v2, v7, v8}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v9, "is_success"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v11, "path_list"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string/jumbo v12, "observing_uri"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "total"

    const-wide/16 v14, 0x0

    invoke-virtual {v3, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    if-eqz v11, :cond_10

    cmp-long v3, v16, v14

    if-nez v3, :cond_8

    goto/16 :goto_13

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    new-instance v12, Ljava/io/File;

    iget-object v13, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v13, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v14, "BACKUP_"

    const-string v15, "_RestoredID"

    invoke-static {v14, v2, v15}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v11, :cond_9

    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v15, Landroid/util/JsonReader;

    new-instance v10, Ljava/io/FileReader;

    new-instance v14, Ljava/io/File;

    move-object/from16 p4, v0

    invoke-static {v13, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v14, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v10}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p4

    const/4 v10, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v14, 0x0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    goto :goto_6

    :cond_9
    :try_start_4
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;

    new-instance v0, Landroid/util/JsonWriter;

    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;-><init>(Ljava/lang/String;Landroid/util/JsonWriter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->open()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonReader;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v10, v0

    :try_start_7
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v10, 0x0

    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v14, v1

    :goto_5
    move-object v1, v0

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v14, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v14, v10

    goto/16 :goto_d

    :catch_5
    move-exception v0

    const/4 v10, 0x0

    move-object v14, v10

    :goto_6
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] Exception"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonReader;

    :try_start_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-object v0, v5

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :cond_b
    :try_start_a
    iget-object v0, v13, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_b

    :cond_c
    :goto_9
    new-instance v1, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v13, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v13, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    const/4 v1, 0x0

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_a

    :goto_c
    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    goto/16 :goto_5

    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonReader;

    :try_start_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    move-object v0, v5

    goto :goto_f

    :catch_8
    move-exception v0

    move-object v7, v0

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :cond_e
    :try_start_c
    iget-object v0, v13, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_11

    :cond_f
    :goto_10
    new-instance v3, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v13, v3}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v13, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_12
    throw v1

    :cond_10
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] PUT_RECORD: pathList is null or totalCount is zero"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-object v7

    :pswitch_4
    const-string v1, "["

    const-string v4, "] GET_RECORD"

    const-string v5, "RecordClientManager"

    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "is_success"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "record_pfd"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    const-string v7, "idlist_file"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_14

    if-nez v7, :cond_11

    goto :goto_17

    :cond_11
    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    iget-object v1, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v1, "observing_uri"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_d
    new-instance v3, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;

    new-instance v4, Landroid/util/JsonWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;-><init>(Ljava/lang/String;Landroid/util/JsonWriter;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->open()V

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object v2, v0

    :goto_15
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :cond_13
    :try_start_f
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_16

    :catch_a
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_16
    throw v2

    :cond_14
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] pfd is null or uploadList is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :pswitch_5
    const-string v3, "["

    const-string v4, "] CLEAR_REUSE_FILE_DB"

    const-string v5, "RecordClientManager"

    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getReusePathList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v7, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_18

    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->clearReuseFile(Ljava/lang/String;)V

    const-string v0, "is_success"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :pswitch_6
    const-string v4, "["

    const-string v5, "] RESTORE_FILE"

    const-string v6, "RecordClientManager"

    invoke-static {v4, v2, v5, v6}, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$6$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "is_success"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const-string/jumbo v7, "path"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "startKey"

    const-string v9, "0"

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "nextKey"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "complete"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v5, :cond_16

    const-string v5, "_restoreitem_"

    invoke-static {v2, v5, v8}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_16
    new-instance v10, Ljava/io/File;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    invoke-direct {v10, v12, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v12, 0x38000000

    :try_start_10
    invoke-static {v10, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "file_descriptor"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;

    move-result-object v1

    new-instance v7, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const-string v10, ""

    iput-object v10, v7, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    iput-object v5, v7, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    iput-object v9, v7, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    iput-boolean v3, v7, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isComplete:Z

    invoke-virtual {v1, v2, v7}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->addReuseFile(Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;)J

    iget-object v1, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_17

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :catch_b
    invoke-virtual {v4, v6, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_19
    return-object v4

    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] GET_KEY_AND_DATE"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "RecordClientManager"

    invoke-static {v5, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file_descriptor"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-nez v1, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] pfd is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_18
    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    iget-object v3, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_19

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_19
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_11
    new-instance v4, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;

    new-instance v0, Landroid/util/JsonWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v5}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->jsonWriter:Landroid/util/JsonWriter;

    iput-object v2, v4, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->sourceKey:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    invoke-virtual {v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->open()V

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_1b

    :goto_1a
    move-object v2, v0

    goto :goto_1b

    :catchall_7
    move-exception v0

    goto :goto_1a

    :goto_1b
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :cond_1a
    :try_start_13
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_1c

    :catch_c
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1c
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
