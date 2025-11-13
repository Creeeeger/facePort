.class public Lcom/samsung/android/settings/share/data/ShareDBAdapter;
.super Ljava/lang/Object;
.source "ShareDBAdapter.java"


# instance fields
.field private final mDBHelper:Lcom/samsung/android/settings/share/data/ShareDBHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/samsung/android/settings/share/data/ShareDBHelper;

    const-string v1, "sem_share.db"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/settings/share/data/ShareDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDBHelper:Lcom/samsung/android/settings/share/data/ShareDBHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "ShareDBAdapter"

    const-string v1, "DB close"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public createShareAppTable()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDBHelper:Lcom/samsung/android/settings/share/data/ShareDBHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/share/data/ShareDBHelper;->makeNewIfNotExist(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public getAllRankedLabelComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/DBShareComponent;",
            ">;"
        }
    .end annotation

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ranked_apps"

    const-string p0, "id"

    const-string v2, "package_name"

    const-string v3, "activity_name"

    const-string v4, "userId"

    filled-new-array {p0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    .line 299
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 312
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    .line 301
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 303
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 304
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 305
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 306
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 307
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v2, Lcom/samsung/android/settings/share/structure/DBShareComponent;

    invoke-direct {v2, v1, v5, v4}, Lcom/samsung/android/settings/share/structure/DBShareComponent;-><init>(ILandroid/content/ComponentName;I)V

    .line 309
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 312
    :cond_2
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_3

    .line 292
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareDBAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllShareAppComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/LabelShareComponent;",
            ">;"
        }
    .end annotation

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "all_apps"

    const-string v2, "id"

    const-string v3, "last_locale"

    const-string v4, "package_name"

    const-string v5, "activity_name"

    const-string v6, "userId"

    const-string v7, "main_label"

    const-string v8, "sub_label"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    .line 331
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 346
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    .line 333
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 335
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    const/4 v1, 0x1

    .line 336
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    .line 337
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    .line 338
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    .line 339
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v1, 0x5

    .line 340
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x6

    .line 341
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 342
    new-instance v1, Lcom/samsung/android/settings/share/structure/LabelShareComponent;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/share/structure/LabelShareComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 346
    :cond_2
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_3

    .line 321
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 347
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareDBAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertRankedAppTargetItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/settings/share/structure/ShareComponent;)J
    .locals 18

    const-string v0, "userId"

    const-string v1, "activity_name"

    const-string v2, "ShareDBAdapter"

    const-string v3, "package_name"

    const-wide/16 v4, -0x1

    :try_start_0
    const-string v7, "ranked_apps"

    .line 80
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "package_name"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_4

    .line 83
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v8, 0x400

    if-lt v7, v8, :cond_0

    goto/16 :goto_3

    .line 86
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v10, "ranked_apps"

    .line 90
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    const-string v6, "%s = ? AND %s = ? AND %s = ?"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v15, 0x1

    aput-object v1, v8, v15

    const/4 v12, 0x2

    aput-object v0, v8, v12

    .line 92
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v13, v7, [Ljava/lang/String;

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v9

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v15

    .line 99
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v12

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p1

    move-object v12, v6

    move v6, v15

    move-object v15, v7

    .line 90
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v7, :cond_2

    .line 101
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lt v8, v6, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "label"

    const-string v3, ""

    .line 107
    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "ranked_apps"

    const/4 v1, 0x0

    move-object/from16 v3, p1

    .line 109
    invoke-virtual {v3, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-wide v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 90
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_2
    :goto_1
    const-wide/16 v0, -0x2

    if-eqz v7, :cond_3

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_3
    return-wide v0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 80
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_5
    return-wide v4

    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public insertShareApps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "sub_label"

    const-string v7, "main_label"

    const-string v8, "userId"

    const-string v9, "activity_name"

    const-string v10, "last_locale"

    const-string v11, "package_name"

    .line 124
    iget-object v12, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    :try_start_0
    iget-object v14, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "all_apps"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "package_name"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v14, :cond_4

    .line 128
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v12, 0x400

    if-lt v15, v12, :cond_0

    goto/16 :goto_5

    .line 131
    :cond_0
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    :try_start_3
    iget-object v12, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "all_apps"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v20

    const-string v13, "%s = ? AND %s = ? AND %s = ? AND %s = ? AND %s = ?AND %s = ?"

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v10, v15, v18

    const/4 v14, 0x1

    aput-object v11, v15, v14

    const/16 v22, 0x2

    aput-object v9, v15, v22

    const/16 v23, 0x3

    aput-object v8, v15, v23

    const/16 v24, 0x4

    aput-object v7, v15, v24

    const/16 v25, 0x5

    aput-object v6, v15, v25

    .line 137
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/String;

    aput-object v0, v15, v18

    aput-object v2, v15, v14

    aput-object v3, v15, v22

    .line 148
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v23

    aput-object v4, v15, v24

    aput-object v5, v15, v25

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    .line 135
    invoke-virtual/range {v18 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v12, :cond_3

    .line 151
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lt v13, v14, :cond_1

    goto :goto_2

    .line 154
    :cond_1
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 155
    invoke-virtual {v13, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v13, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v13, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    invoke-virtual {v13, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v13, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "all_apps"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    :goto_0
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 167
    :cond_2
    iget-object v0, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 168
    iget-object v0, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 135
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_2
    const-wide/16 v2, -0x2

    if-eqz v12, :cond_2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 165
    :catch_0
    :try_start_8
    iget-object v0, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 167
    iget-object v0, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 168
    iget-object v0, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-wide/16 v1, -0x1

    return-wide v1

    .line 167
    :goto_3
    iget-object v2, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 168
    iget-object v1, v1, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 125
    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    :cond_4
    :goto_5
    if-eqz v14, :cond_5

    .line 131
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :cond_5
    const-wide/16 v1, -0x1

    return-wide v1

    :catch_1
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareDBAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    const-string v0, "ShareDBAdapter"

    :try_start_0
    const-string v1, "DB open"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDBHelper:Lcom/samsung/android/settings/share/data/ShareDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDBHelper:Lcom/samsung/android/settings/share/data/ShareDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    return-void
.end method

.method public removeAllApps()V
    .locals 9

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "all_apps"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 178
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "all_apps"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 174
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareDBAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public removeRankedApp(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "ranked_apps"

    const-string v1, "id= ?"

    invoke-virtual {p1, v0, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[Failed to delete] not found on db : idx("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShareDBAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public transaction(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->mDBHelper:Lcom/samsung/android/settings/share/data/ShareDBHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 65
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 68
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 70
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 71
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz p0, :cond_1

    .line 62
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw p1
.end method

.method public updateRankedItem(Landroid/database/sqlite/SQLiteDatabase;ILcom/samsung/android/settings/share/structure/ShareComponent;)J
    .locals 2

    .line 241
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 242
    invoke-virtual {p3}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    const-string v1, ""

    .line 244
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getUserId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "userId"

    invoke-virtual {p0, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "ranked_apps"

    const-string v0, "id = ?"

    invoke-virtual {p1, p2, p0, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
