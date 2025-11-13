.class public final Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

.field public final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$2;->this$0:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    iput-object p2, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 56

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$2;->this$0:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    iget-object v1, v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "sudId"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "simSlotIndex"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "carrierId"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "displayName"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "carrierName"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "dataRoaming"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "mcc"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "mnc"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "countryIso"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "isEmbedded"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cardId"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "portIndex"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "isOpportunistic"

    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "groupUUID"

    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subscriptionType"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "uniqueName"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "isSubscriptionVisible"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "getFormattedPhoneNumber"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "isFirstRemovableSubscription"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "isDefaultSubscriptionSelection"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "isValidSubscription"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "isUsableSubscription"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "isActiveSubscription"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "isAvailableSubscription"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "isActiveDataSubscriptionId"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_13

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    const/16 v27, 0x0

    if-eqz v26, :cond_0

    move-object/from16 v29, v27

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v29, v26

    :goto_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v32, v27

    goto :goto_2

    :cond_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v32, v26

    :goto_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_2

    move-object/from16 v33, v27

    goto :goto_3

    :cond_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v33, v26

    :goto_3
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_3

    move-object/from16 v35, v27

    goto :goto_4

    :cond_3
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v35, v26

    :goto_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v36, v27

    goto :goto_5

    :cond_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v36, v26

    :goto_5
    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v37, v27

    goto :goto_6

    :cond_5
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v37, v26

    :goto_6
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v28, 0x0

    const/16 v38, 0x1

    if-eqz v26, :cond_6

    move/from16 v26, v38

    goto :goto_7

    :cond_6
    move/from16 v26, v28

    :goto_7
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    if-eqz v41, :cond_7

    move/from16 v41, v38

    goto :goto_8

    :cond_7
    move/from16 v41, v28

    :goto_8
    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_8

    move-object/from16 v42, v27

    :goto_9
    move/from16 v55, v0

    move/from16 v0, p0

    move/from16 p0, v55

    goto :goto_a

    :cond_8
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    goto :goto_9

    :goto_a
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    move/from16 v54, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 v16, v0

    move/from16 v0, v17

    move-object/from16 v44, v27

    goto :goto_b

    :cond_9
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v44, v16

    move/from16 v16, v0

    move/from16 v0, v17

    :goto_b
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_a

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v45, v38

    goto :goto_c

    :cond_a
    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v45, v28

    :goto_c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_b

    :goto_d
    move/from16 v18, v0

    move/from16 v0, v19

    move-object/from16 v46, v27

    goto :goto_e

    :cond_b
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_d

    :goto_e
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_c

    move/from16 v19, v0

    move/from16 v0, v20

    move/from16 v47, v38

    goto :goto_f

    :cond_c
    move/from16 v19, v0

    move/from16 v0, v20

    move/from16 v47, v28

    :goto_f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-eqz v20, :cond_d

    move/from16 v20, v0

    move/from16 v0, v21

    move/from16 v48, v38

    goto :goto_10

    :cond_d
    move/from16 v20, v0

    move/from16 v0, v21

    move/from16 v48, v28

    :goto_10
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_e

    move/from16 v21, v0

    move/from16 v0, v22

    move/from16 v49, v38

    goto :goto_11

    :cond_e
    move/from16 v21, v0

    move/from16 v0, v22

    move/from16 v49, v28

    :goto_11
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_f

    move/from16 v22, v0

    move/from16 v0, v23

    move/from16 v50, v38

    goto :goto_12

    :cond_f
    move/from16 v22, v0

    move/from16 v0, v23

    move/from16 v50, v28

    :goto_12
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_10

    move/from16 v23, v0

    move/from16 v0, v24

    move/from16 v51, v38

    goto :goto_13

    :cond_10
    move/from16 v23, v0

    move/from16 v0, v24

    move/from16 v51, v28

    :goto_13
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_11

    move/from16 v24, v0

    move/from16 v0, v25

    move/from16 v52, v38

    goto :goto_14

    :cond_11
    move/from16 v24, v0

    move/from16 v0, v25

    move/from16 v52, v28

    :goto_14
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_12

    move/from16 v25, v0

    move/from16 v53, v38

    goto :goto_15

    :cond_12
    move/from16 v25, v0

    move/from16 v53, v28

    :goto_15
    new-instance v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    move-object/from16 v28, v0

    move/from16 v38, v26

    invoke-direct/range {v28 .. v53}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZLjava/lang/String;ILjava/lang/String;ZLjava/lang/String;ZZZZZZZ)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 p0, v54

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_16

    :cond_13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v15

    :goto_16
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final finalize()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
