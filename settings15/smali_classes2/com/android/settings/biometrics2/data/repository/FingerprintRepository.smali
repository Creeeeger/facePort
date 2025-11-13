.class public final Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mSensorPropertiesCache:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository$1;-><init>(Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;)V

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    return-void
.end method


# virtual methods
.method public final canAssumeSfps()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getFirstFingerprintSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    if-eqz p0, :cond_0

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

.method public final canAssumeUdfps()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getFirstFingerprintSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    if-eqz p0, :cond_0

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

.method public final getFirstFingerprintSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->mSensorPropertiesCache:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "FingerprintRepository"

    const-string v1, "Sensor properties cache is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    :cond_1
    return-object v0
.end method

.method public final getNumOfEnrolledFingerprintsSize(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
