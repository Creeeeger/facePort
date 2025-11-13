.class public final Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appUsageEventType:I

.field public final instanceId:I

.field public mId:J

.field public final packageName:Ljava/lang/String;

.field public final taskRootPackageName:Ljava/lang/String;

.field public final timestamp:J

.field public final uid:J

.field public final userId:J


# direct methods
.method public constructor <init>(JJJILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->uid:J

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->userId:J

    iput-wide p5, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->timestamp:J

    iput p7, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->appUsageEventType:I

    iput-object p8, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->packageName:Ljava/lang/String;

    iput p9, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->instanceId:I

    iput-object p10, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->taskRootPackageName:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/ContentValues;)Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;
    .locals 15

    const-string v0, "uid"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, v2

    :goto_0
    const-string v0, "userId"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_1

    :cond_1
    move-wide v7, v2

    :goto_1
    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_2
    move-wide v9, v2

    const-string v0, "appUsageEventType"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v11, v0

    goto :goto_2

    :cond_3
    move v11, v2

    :goto_2
    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_3

    :cond_4
    move-object v12, v3

    :goto_3
    const-string v0, "instanceId"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v13, v0

    goto :goto_4

    :cond_5
    move v13, v2

    :goto_4
    const-string v0, "taskRootPackageName"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v14, p0

    goto :goto_5

    :cond_6
    move-object v14, v3

    :goto_5
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;

    move-object v4, p0

    invoke-direct/range {v4 .. v14}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;-><init>(JJJILjava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->timestamp:J

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nAppUsageEvent{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n\tpackage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->uid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->userId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n\ttimestamp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|eventType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->appUsageEventType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|instanceId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->instanceId:I

    const-string v3, "\n\ttaskRootPackageName="

    invoke-static {v2, v0, v1, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->taskRootPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
