.class public Lcom/android/systemui/util/sensors/ThresholdSensorEvent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mBelow:Z

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    iput-wide p2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mTimestampNs:J

    return-void
.end method


# virtual methods
.method public getBelow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    return p0
.end method

.method public getTimestampMs()J
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mTimestampNs:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimestampNs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mTimestampNs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    iget-wide v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mTimestampNs:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{near="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp_ns="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
