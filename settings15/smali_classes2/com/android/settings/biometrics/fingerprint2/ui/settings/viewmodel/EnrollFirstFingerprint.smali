.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;
.super Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/NextStepViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final challenge:Ljava/lang/Long;

.field public final challengeToken:[B

.field public final gateKeeperPasswordHandle:Ljava/lang/Long;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/Long;Ljava/lang/Long;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->userId:I

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->gateKeeperPasswordHandle:Ljava/lang/Long;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challenge:Ljava/lang/Long;

    iput-object p4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challengeToken:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;

    iget v1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->userId:I

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->userId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->gateKeeperPasswordHandle:Ljava/lang/Long;

    iget-object v3, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->gateKeeperPasswordHandle:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challenge:Ljava/lang/Long;

    iget-object v3, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challenge:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challengeToken:[B

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challengeToken:[B

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->gateKeeperPasswordHandle:Ljava/lang/Long;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challenge:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challengeToken:[B

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challengeToken:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnrollFirstFingerprint(userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gateKeeperPasswordHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->gateKeeperPasswordHandle:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", challenge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challenge:Ljava/lang/Long;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", challengeToken="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
