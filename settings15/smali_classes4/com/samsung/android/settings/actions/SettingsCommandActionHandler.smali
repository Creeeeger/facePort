.class public final Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCachedCommandMap:Ljava/util/Map;

.field public mContext:Landroid/content/Context;

.field public mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;


# virtual methods
.method public final getAvailableCommands()Ljava/util/Map;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    iget-object v2, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    iget-object v1, v1, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

    iget-object v1, v1, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->isActionDataIndexed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v2, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    if-nez v1, :cond_c

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    iget-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    iget-object v3, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

    invoke-virtual {v5}, Lcom/samsung/android/settings/actions/ActionsIndexer;->indexActionData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v1, v1, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v15, "keywords"

    const-string v16, "controller"

    const-string v4, "key"

    const-string/jumbo v5, "title"

    const-string/jumbo v6, "summary"

    const-string v7, "fragment"

    const-string v8, "icon"

    const-string v9, "action_type"

    const-string/jumbo v10, "recoverable"

    const-string/jumbo v11, "restore_key"

    const-string/jumbo v12, "target_fragment"

    const-string/jumbo v13, "payload"

    const-string/jumbo v14, "screentitle"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "actions_index"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "key"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "title"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "summary"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "icon"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    :goto_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-lez v6, :cond_3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :goto_1
    move/from16 v23, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_6

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :goto_2
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    const-string v9, "command"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".command"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v8, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;->ROUTINES:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "routines"

    move-object v13, v9

    goto :goto_3

    :cond_5
    move-object v13, v2

    :goto_3
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v7, Lcom/samsung/android/sdk/command/Command;

    sget-object v19, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    const/4 v12, 0x0

    move-object v8, v7

    move-object v9, v15

    move-object v2, v15

    move-object/from16 v15, v24

    invoke-direct/range {v8 .. v23}, Lcom/samsung/android/sdk/command/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v8, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_8
    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_9
    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :goto_6
    if-eqz v1, :cond_b

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    throw v2

    :catchall_2
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_c
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAvailableCommands() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Command/SettingsCommandActionHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    iget-object v1, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->getIndexedActionData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->buildActionData(Landroid/database/Cursor;)Lcom/samsung/android/settings/actions/ActionData;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-string p2, "Command/ActionsDatabaseAccessor"

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v0

    :goto_2
    if-nez p2, :cond_1

    goto :goto_4

    :cond_1
    iget-object p0, p2, Lcom/samsung/android/settings/actions/ActionData;->mPreferenceController:Ljava/lang/String;

    :try_start_5
    invoke-static {p1, p0}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object v0, p0

    goto :goto_4

    :catch_1
    iget-object p2, p2, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    goto :goto_3

    :goto_4
    return-object v0
.end method

.method public final loadStateFullCommandInternal(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "loadStatefulCommand() invalid internal key : "

    const-string v3, "loadStatefulCommand() "

    const-string v4, "loadStatefulCommand() command is null "

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getAvailableCommands()Ljava/util/Map;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/command/Command;

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    sget-object v6, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    const-string v8, "Command/SettingsCommandActionHandler"

    if-nez v5, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    iget-object v4, v5, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    :try_start_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v10, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v10, p2

    iget-object v10, v10, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    iget-boolean v10, v10, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    iput v10, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget-object v10, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    const/4 v10, 0x2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    iget-object v13, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    invoke-virtual {v11, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11}, Lcom/android/settings/activityembedding/EmbeddedDeepLinkUtils;->getTrampolineIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    invoke-virtual {v13, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v11, v13

    :cond_2
    iget-object v0, v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    const/high16 v13, 0xc000000

    invoke-static {v0, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v7

    :goto_1
    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v11

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eqz v11, :cond_4

    if-eq v11, v14, :cond_4

    const/4 v14, 0x4

    if-eq v11, v10, :cond_4

    if-eq v11, v13, :cond_5

    if-eq v11, v14, :cond_4

    const/4 v10, 0x5

    if-eq v11, v10, :cond_4

    move v10, v12

    goto :goto_2

    :cond_4
    move v10, v14

    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/samsung/android/settings/actions/templatebuilder/CommandTemplateBuilder;->build(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object v11

    if-ne v11, v6, :cond_6

    move v10, v13

    :cond_6
    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v6

    move-object/from16 v23, v11

    goto :goto_3

    :cond_7
    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move-object/from16 v25, v21

    move-object/from16 v26, v25

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, v5, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    iget-object v14, v5, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    iget-object v15, v5, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    iget-object v0, v5, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ".command"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    :cond_8
    iget-object v0, v5, Lcom/samsung/android/sdk/command/Command;->mPackageName:Ljava/lang/String;

    iget-object v2, v5, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    iget-object v3, v5, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    iget-object v4, v5, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;->ROUTINES:Ljava/util/Map;

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "routines"

    move-object/from16 v17, v6

    goto :goto_4

    :cond_9
    move-object/from16 v17, v7

    :goto_4
    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    new-instance v5, Lcom/samsung/android/sdk/command/Command;

    const/16 v19, 0x0

    const/16 v27, 0x0

    move-object v12, v5

    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move/from16 v24, v10

    invoke-direct/range {v12 .. v27}, Lcom/samsung/android/sdk/command/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v5

    :cond_a
    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v7

    :cond_b
    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v7

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    const-string v2, "loadStatefulCommand() cannot load a command due to an exception : "

    const-string v3, ", "

    invoke-static {v2, v1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    return-object v7
.end method

.method public final loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadStatefulCommand() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Command/SettingsCommandActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/command/action/DefaultAction;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->loadStateFullCommandInternal(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0
.end method

.method public final loadStatefulCommand(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 2

    const-string v0, "loadStatefulCommand() "

    const-string v1, " / "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/action/CommandParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Command/SettingsCommandActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->loadStateFullCommandInternal(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0
.end method

.method public final performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/CommandProvider$1;)V
    .locals 12

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->loadStatefulCommand(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v3, p2, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    iput v3, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget-object v3, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v1}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    if-eqz v6, :cond_6

    sget-object v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->sInstance:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    if-nez v7, :cond_2

    new-instance v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    invoke-direct {v7}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;-><init>()V

    sput-object v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->sInstance:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    :cond_2
    sget-object v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->sInstance:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v8, v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    if-nez v8, :cond_3

    new-instance v8, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    :cond_3
    iget-object v8, v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    iput v9, v8, Landroid/os/Message;->what:I

    new-instance v9, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;

    invoke-direct {v9, v7, p0}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;-><init>(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;Landroid/content/Context;)V

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    if-nez v9, :cond_4

    new-instance v9, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    :cond_4
    iget-object v9, v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v8, v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;

    if-nez v8, :cond_5

    new-instance v8, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;

    invoke-direct {v8, p1}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;-><init>(Landroid/net/Uri;)V

    iget-object v7, v7, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p1, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;->TAG:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v8, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to register receiver : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reigster receiver : "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, v0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result p0

    if-eq p0, v5, :cond_a

    if-eq p0, v2, :cond_9

    const/4 p1, 0x3

    if-eq p0, p1, :cond_8

    const/4 p1, 0x5

    if-eq p0, p1, :cond_7

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/samsung/android/settings/actions/templateresolver/SingleChoiceTemplateResolver;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_8
    new-instance v3, Lcom/samsung/android/settings/actions/templateresolver/SliderTemplateRsolver;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_9
    new-instance v3, Lcom/samsung/android/settings/actions/templateresolver/ToggleTemplateResolver;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_a
    new-instance v3, Lcom/samsung/android/settings/actions/templateresolver/NoTemplateResolver;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :goto_1
    new-instance p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;

    invoke-direct {p0, v4, p3}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;-><init>(ZLcom/samsung/android/sdk/command/provider/CommandProvider$1;)V

    invoke-interface {v3, p2, v1, p0}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;->resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;)V

    goto :goto_4

    :cond_b
    :goto_2
    const-string/jumbo p0, "performCommandAction() controller is not available "

    const-string p2, ", "

    invoke-static {p0, p1, p2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v1, :cond_c

    const-string p1, "controller is null"

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string p2, "Command/SettingsCommandActionHandler"

    invoke-static {p0, p1, p2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2, v3}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    :goto_4
    return-void
.end method
