.class public final Lcom/samsung/android/settings/cube/index/ControlsIndexer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mConverter:Lcom/samsung/android/settings/cube/index/ControlDataConverter;

.field public mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;


# direct methods
.method public static insertControlData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 5

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/cube/index/ControlData;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mKey:Ljava/lang/String;

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    iget-object v3, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "summary"

    iget-object v3, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mScreenTitle:Ljava/lang/CharSequence;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v4, "screen_title"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "keywords"

    iget-object v4, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mKeywords:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mIconUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v2, "icon_uri"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fragment"

    iget-object v3, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "controller"

    iget-object v3, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mControllerClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mControlType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "control_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v2, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mRecoverable:Z

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_3

    :cond_2
    const-string v2, "0"

    :goto_3
    const-string/jumbo v3, "recoverable"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "restore_key"

    iget-object v0, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mRestoreKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "controls_index"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final getControlData()Ljava/util/List;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mConverter:Lcom/samsung/android/settings/cube/index/ControlDataConverter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "ControlDataConverter"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/actions/ActionsIndexer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    new-instance v6, Lcom/samsung/android/settings/actions/ActionDataConverter;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    iput-object v0, v6, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    iput-object v6, v5, Lcom/samsung/android/settings/actions/ActionsIndexer;->mConverter:Lcom/samsung/android/settings/actions/ActionDataConverter;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    invoke-virtual {v5}, Lcom/samsung/android/settings/actions/ActionsIndexer;->indexActionData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v18, "payload"

    const-string/jumbo v19, "screentitle"

    const-string v9, "key"

    const-string/jumbo v10, "title"

    const-string/jumbo v11, "summary"

    const-string v12, "fragment"

    const-string v13, "icon"

    const-string v14, "action_type"

    const-string/jumbo v15, "recoverable"

    const-string/jumbo v16, "restore_key"

    const-string/jumbo v17, "target_fragment"

    const-string v20, "keywords"

    const-string v21, "controller"

    filled-new-array/range {v9 .. v21}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v9, "actions_index"

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "key"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v0, "title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v0, "summary"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v0, "screentitle"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "keywords"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v0, "icon"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v0, "fragment"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "controller"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v0, "action_type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v0, "recoverable"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const/16 v16, 0x0

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mTitle:Ljava/lang/String;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mSummary:Ljava/lang/String;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKeywords:Ljava/lang/String;

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x0

    move-object/from16 v18, v1

    move/from16 v17, v5

    move/from16 v19, v6

    goto :goto_1

    :cond_0
    move/from16 v17, v5

    iget-object v5, v1, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v18, v1

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    move/from16 v19, v6

    const-string v6, "android.resource"

    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    :goto_1
    iput-object v15, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mIconUri:Landroid/net/Uri;

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControllerClassName:Ljava/lang/String;

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControlType:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRecoverable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->build()Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getControlData() ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v16, 0x1

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "] key = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/settings/cube/index/ControlData;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->build()Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v16, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move/from16 v16, v6

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidControlDataException() "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_2

    goto :goto_7

    :cond_2
    move/from16 v5, v17

    move-object/from16 v1, v18

    move/from16 v6, v19

    goto/16 :goto_0

    :goto_5
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1

    :cond_3
    :goto_7
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v3

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public final indexControlData()V
    .locals 6

    const-string v0, "Indexing actions database took: "

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    iget-object v2, v1, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "controls_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "ControlsIndexer"

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "Control already indexed - returning."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->getControlData()Ljava/util/List;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->insertControlData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->setIndexedState()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method
