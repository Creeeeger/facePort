.class public final Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;
.super Lcom/android/systemui/deviceentry/shared/model/FaceAuthenticationStatus;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final createdAt:J

.field public final successResult:Landroid/hardware/face/FaceManager$AuthenticationResult;


# direct methods
.method public constructor <init>(Landroid/hardware/face/FaceManager$AuthenticationResult;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/deviceentry/shared/model/FaceAuthenticationStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->successResult:Landroid/hardware/face/FaceManager$AuthenticationResult;

    iput-wide p2, p0, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->createdAt:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/face/FaceManager$AuthenticationResult;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;-><init>(Landroid/hardware/face/FaceManager$AuthenticationResult;J)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->successResult:Landroid/hardware/face/FaceManager$AuthenticationResult;

    iget-object v3, p1, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->successResult:Landroid/hardware/face/FaceManager$AuthenticationResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->createdAt:J

    iget-wide p0, p1, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->createdAt:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->successResult:Landroid/hardware/face/FaceManager$AuthenticationResult;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager$AuthenticationResult;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->createdAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->successResult:Landroid/hardware/face/FaceManager$AuthenticationResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SuccessFaceAuthenticationStatus(successResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", createdAt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/deviceentry/shared/model/SuccessFaceAuthenticationStatus;->createdAt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
