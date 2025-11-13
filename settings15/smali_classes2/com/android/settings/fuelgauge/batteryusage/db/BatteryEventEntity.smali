.class public final Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final batteryEventType:I

.field public final batteryLevel:I

.field public mId:J

.field public final timestamp:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->timestamp:J

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->batteryEventType:I

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->batteryLevel:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->timestamp:J

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nBatteryEvent{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "\n\ttimestamp="

    const-string v3, "|batteryEventType="

    invoke-static {v2, v0, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->batteryEventType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|batteryLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->batteryLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
