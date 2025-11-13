.class public final Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final maxEnrollmentsPerUser:I

.field public final sensorBounds:Landroid/graphics/Rect;

.field public final sensorId:I

.field public final sensorRadius:I

.field public final sensorStrength:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

.field public final sensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;


# direct methods
.method public constructor <init>(ILcom/android/systemui/biometrics/shared/model/SensorStrength;ILcom/android/systemui/biometrics/shared/model/FingerprintSensorType;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorId:I

    iput-object p2, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorStrength:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    iput p3, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->maxEnrollmentsPerUser:I

    iput-object p4, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    iput-object p5, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorBounds:Landroid/graphics/Rect;

    iput p6, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorRadius:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;

    iget v1, p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorId:I

    iget v3, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorStrength:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    iget-object v3, p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorStrength:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->maxEnrollmentsPerUser:I

    iget v3, p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->maxEnrollmentsPerUser:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    iget-object v3, p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorBounds:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorRadius:I

    iget p1, p1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorRadius:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorStrength:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->maxEnrollmentsPerUser:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorRadius:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorBounds:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FingerprintSensor(sensorId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sensorStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorStrength:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", maxEnrollmentsPerUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->maxEnrollmentsPerUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sensorType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sensorBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sensorRadius="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;->sensorRadius:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
