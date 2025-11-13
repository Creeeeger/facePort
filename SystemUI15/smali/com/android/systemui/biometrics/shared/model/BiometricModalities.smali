.class public final Lcom/android/systemui/biometrics/shared/model/BiometricModalities;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field public final fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/face/FaceSensorPropertiesInternal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/face/FaceSensorPropertiesInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iput-object p2, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/face/FaceSensorPropertiesInternal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/face/FaceSensorPropertiesInternal;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v3, p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-object p1, p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHasFaceAndFingerprint()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHasFaceOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFingerprint()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHasFingerprint()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHasSfps()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHasUdfps()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/face/FaceSensorPropertiesInternal;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BiometricModalities(fingerprintProperties="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", faceProperties="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
