.class public final Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/shared/model/AuthenticationState;


# instance fields
.field public final acquiredInfo:I

.field public final biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public final requestReason:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricSourceType;Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iput-object p2, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->requestReason:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    iput p3, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->acquiredInfo:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;

    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p1, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->requestReason:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    iget-object v3, p1, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->requestReason:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->acquiredInfo:I

    iget p1, p1, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->acquiredInfo:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object p0
.end method

.method public final getRequestReason()Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->requestReason:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricSourceType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->requestReason:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->acquiredInfo:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Acquired(biometricSourceType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestReason="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->requestReason:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", acquiredInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;->acquiredInfo:I

    const-string v0, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
