.class public final Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

.field public final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$2;->this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    iput-object p2, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$2;->this$0:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    iget-object v1, v1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "subId"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "isContactDiscoveryEnabled"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "isContactDiscoveryVisible"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "isMobileDataEnabled"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "isCdmaOptions"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "isGsmOptions"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isWorldMode"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "shouldDisplayNetworkSelectOptions"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "isTdscdmaSupported"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "activeNetworkIsCellular"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "showToggleForPhysicalSim"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "isDataRoamingEnabled"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v16, v14

    goto :goto_2

    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :goto_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v17, 0x1

    if-eqz v14, :cond_1

    move/from16 v14, v17

    goto :goto_3

    :cond_1
    move v14, v15

    :goto_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_2

    move/from16 v18, v17

    goto :goto_4

    :cond_2
    move/from16 v18, v15

    :goto_4
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_3

    move/from16 v19, v17

    goto :goto_5

    :cond_3
    move/from16 v19, v15

    :goto_5
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-eqz v20, :cond_4

    move/from16 v20, v17

    goto :goto_6

    :cond_4
    move/from16 v20, v15

    :goto_6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v21, v17

    goto :goto_7

    :cond_5
    move/from16 v21, v15

    :goto_7
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v17

    goto :goto_8

    :cond_6
    move/from16 v22, v15

    :goto_8
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_7

    move/from16 v23, v17

    goto :goto_9

    :cond_7
    move/from16 v23, v15

    :goto_9
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_8

    move/from16 v24, v17

    goto :goto_a

    :cond_8
    move/from16 v24, v15

    :goto_a
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    move/from16 v25, v17

    goto :goto_b

    :cond_9
    move/from16 v25, v15

    :goto_b
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_a

    move/from16 v26, v17

    goto :goto_c

    :cond_a
    move/from16 v26, v15

    :goto_c
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_b

    move/from16 v27, v17

    goto :goto_d

    :cond_b
    move/from16 v27, v15

    :goto_d
    new-instance v15, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    move-object/from16 p0, v15

    move-object/from16 v15, p0

    move/from16 v17, v14

    invoke-direct/range {v15 .. v27}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;-><init>(Ljava/lang/String;ZZZZZZZZZZZ)V

    move-object/from16 v14, p0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v13

    :goto_e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final finalize()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
