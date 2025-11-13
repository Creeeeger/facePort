.class public final Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final deviceId:J

.field public final fingerId:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    iput-wide p1, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->deviceId:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iget-object v1, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    iget v3, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->deviceId:J

    iget-wide p0, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->deviceId:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v1, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->deviceId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FingerprintData(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->fingerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->deviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
