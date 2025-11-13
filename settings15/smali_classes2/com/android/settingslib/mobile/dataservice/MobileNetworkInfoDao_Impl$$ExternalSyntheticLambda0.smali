.class public final synthetic Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    const-string v2, "DELETE FROM MobileNetworkInfo WHERE subId = ?"

    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    const/4 v0, 0x0

    return-object v0

    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    const-string v2, "SELECT * FROM MobileNetworkInfo WHERE subId = ?"

    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_1
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_2
    const-string v0, "subId"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    const-string v3, "isContactDiscoveryEnabled"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    const-string v4, "isContactDiscoveryVisible"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    const-string v5, "isMobileDataEnabled"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    const-string v6, "isCdmaOptions"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isGsmOptions"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isWorldMode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    const-string v9, "shouldDisplayNetworkSelectOptions"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    const-string v10, "isTdscdmaSupported"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    const-string v11, "activeNetworkIsCellular"

    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    const-string v12, "showToggleForPhysicalSim"

    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    const-string v13, "isDataRoamingEnabled"

    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_e

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    :goto_3
    move-object/from16 v17, v15

    goto :goto_4

    :cond_2
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :goto_4
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v0, v14

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move/from16 v18, v2

    goto :goto_5

    :cond_3
    move/from16 v18, v3

    :goto_5
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v0, v14

    if-eqz v0, :cond_4

    move/from16 v19, v2

    goto :goto_6

    :cond_4
    move/from16 v19, v3

    :goto_6
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_5

    move/from16 v20, v2

    goto :goto_7

    :cond_5
    move/from16 v20, v3

    :goto_7
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_6

    move/from16 v21, v2

    goto :goto_8

    :cond_6
    move/from16 v21, v3

    :goto_8
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_7

    move/from16 v22, v2

    goto :goto_9

    :cond_7
    move/from16 v22, v3

    :goto_9
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_8

    move/from16 v23, v2

    goto :goto_a

    :cond_8
    move/from16 v23, v3

    :goto_a
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_9

    move/from16 v24, v2

    goto :goto_b

    :cond_9
    move/from16 v24, v3

    :goto_b
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_a

    move/from16 v25, v2

    goto :goto_c

    :cond_a
    move/from16 v25, v3

    :goto_c
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_b

    move/from16 v26, v2

    goto :goto_d

    :cond_b
    move/from16 v26, v3

    :goto_d
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_c

    move/from16 v27, v2

    goto :goto_e

    :cond_c
    move/from16 v27, v3

    :goto_e
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_d

    move/from16 v28, v2

    goto :goto_f

    :cond_d
    move/from16 v28, v3

    :goto_f
    new-instance v15, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v28}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;-><init>(Ljava/lang/String;ZZZZZZZZZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_e
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v15

    :goto_10
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
