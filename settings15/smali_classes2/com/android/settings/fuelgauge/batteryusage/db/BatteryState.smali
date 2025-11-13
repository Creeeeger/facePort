.class public final Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final batteryInformation:Ljava/lang/String;

.field public final batteryInformationDebug:Ljava/lang/String;

.field public final consumerType:I

.field public final isFullChargeCycleStart:Z

.field public mId:J

.field public final packageName:Ljava/lang/String;

.field public final timestamp:J

.field public final uid:J

.field public final userId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;JIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->uid:J

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->userId:J

    iput-object p5, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->packageName:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->timestamp:J

    iput p8, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->consumerType:I

    iput-boolean p9, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->isFullChargeCycleStart:Z

    iput-object p10, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->batteryInformation:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->batteryInformationDebug:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/ContentValues;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide v6, v3

    :goto_0
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    :goto_1
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_2

    :cond_2
    move-object v10, v5

    :goto_2
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_3
    move-wide v11, v3

    const-string v1, "consumerType"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v13, v1

    goto :goto_3

    :cond_4
    move v13, v3

    :goto_3
    const-string v1, "isFullChargeCycleStart"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v14, v1

    goto :goto_4

    :cond_5
    move v14, v3

    :goto_4
    const-string v1, "batteryInformation"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_5

    :cond_6
    move-object v15, v5

    :goto_5
    const-string v1, "batteryInformationDebug"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_6

    :cond_7
    move-object/from16 v16, v5

    :goto_6
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;-><init>(JJLjava/lang/String;JIZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->timestamp:J

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->batteryInformation:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\nBatteryState{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n\tpackage="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->uid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "|userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->userId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n\ttimestamp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|consumer="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->consumerType:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|isStart="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->isFullChargeCycleStart:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\tbatteryInfo="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
