.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;->f$0:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;->f$0:J

    move-object/from16 v2, p1

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    const-string v3, "SELECT * FROM BatteryState WHERE timestamp > ? ORDER BY timestamp DESC"

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v0, "mId"

    invoke-static {v2, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    const-string v1, "uid"

    invoke-static {v2, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    const-string v4, "userId"

    invoke-static {v2, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    const-string v5, "packageName"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    const-string v6, "timestamp"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    const-string v7, "consumerType"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isFullChargeCycleStart"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    const-string v9, "batteryInformation"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    const-string v10, "batteryInformationDebug"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v16

    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v18, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v12

    :goto_1
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    move/from16 p1, v4

    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move-wide/from16 v21, v14

    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    long-to-int v12, v13

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v23, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v23, v13

    :goto_3
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v24, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v4

    :goto_4
    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;

    move-object v13, v4

    move-wide/from16 v14, v21

    move/from16 v21, v3

    move/from16 v22, v12

    invoke-direct/range {v13 .. v24}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;-><init>(JJLjava/lang/String;JIZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->mId:J

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, p1

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v11

    :goto_5
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0

    :pswitch_0
    iget-wide v0, v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$$ExternalSyntheticLambda1;->f$0:J

    move-object/from16 v2, p1

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    const-string v3, "SELECT DISTINCT timestamp FROM BatteryState WHERE timestamp > ?"

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v2, v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    goto :goto_7

    :cond_5
    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_6
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v0

    :goto_8
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
