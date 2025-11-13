.class public final Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;
.super Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SideFingerprint(properties="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
