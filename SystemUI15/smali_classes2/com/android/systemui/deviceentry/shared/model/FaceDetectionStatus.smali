.class public final Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final createdAt:J

.field public final isStrongBiometric:Z

.field public final sensorId:I

.field public final userId:I


# direct methods
.method public constructor <init>(IIZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->sensorId:I

    iput p2, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->userId:I

    iput-boolean p3, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->isStrongBiometric:Z

    iput-wide p4, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->createdAt:J

    return-void
.end method

.method public synthetic constructor <init>(IIZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;-><init>(IIZJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;

    iget v1, p1, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->sensorId:I

    iget v3, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->sensorId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->userId:I

    iget v3, p1, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->userId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->isStrongBiometric:Z

    iget-boolean v3, p1, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->isStrongBiometric:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->createdAt:J

    iget-wide p0, p1, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->createdAt:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->sensorId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->userId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->isStrongBiometric:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-wide v1, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->createdAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FaceDetectionStatus(sensorId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->sensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isStrongBiometric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->isStrongBiometric:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/deviceentry/shared/model/FaceDetectionStatus;->createdAt:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
