.class public final Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;
.super Lcom/android/systemui/deviceentry/shared/model/FaceAuthenticationStatus;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final createdAt:J

.field public final msg:Ljava/lang/String;

.field public final msgId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/deviceentry/shared/model/FaceAuthenticationStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msgId:I

    iput-object p2, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msg:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->createdAt:J

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;-><init>(ILjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;

    iget v1, p1, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msgId:I

    iget v3, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msgId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->createdAt:J

    iget-wide p0, p1, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->createdAt:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msgId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msg:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->createdAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HelpFaceAuthenticationStatus(msgId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/deviceentry/shared/model/HelpFaceAuthenticationStatus;->createdAt:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
