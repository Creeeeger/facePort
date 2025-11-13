.class public final Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

.field public final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$2;->this$0:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    iput-object p2, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$2;->this$0:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    iget-object v1, v1, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "sudId"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "physicalSlotIndex"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "logicalSlotIndex"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cardId"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "isEuicc"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "isMultipleEnabledProfilesSupported"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "cardState"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isRemovable"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "isActive"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "portIndex"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    move-object v15, v13

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v15, v12

    :goto_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_2
    move-object/from16 v16, v13

    goto :goto_3

    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :goto_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_2

    move/from16 v19, v14

    goto :goto_4

    :cond_2
    move/from16 v19, v13

    :goto_4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_3

    move/from16 v20, v14

    goto :goto_5

    :cond_3
    move/from16 v20, v13

    :goto_5
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_4

    move/from16 v22, v14

    goto :goto_6

    :cond_4
    move/from16 v22, v13

    :goto_6
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_5

    move/from16 v23, v14

    goto :goto_7

    :cond_5
    move/from16 v23, v13

    :goto_7
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    new-instance v12, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;

    move-object v14, v12

    invoke-direct/range {v14 .. v24}, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZIZZI)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v11

    :goto_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final finalize()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
