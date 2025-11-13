.class public final Lcom/android/systemui/keyguard/shared/model/TrustModel;
.super Lcom/android/systemui/keyguard/shared/model/TrustMessage;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final flags:Lcom/android/keyguard/TrustGrantFlags;

.field public final isTrusted:Z

.field public final userId:I


# direct methods
.method public constructor <init>(ZILcom/android/keyguard/TrustGrantFlags;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/shared/model/TrustMessage;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->isTrusted:Z

    iput p2, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->userId:I

    iput-object p3, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->flags:Lcom/android/keyguard/TrustGrantFlags;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;

    iget-boolean v1, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;->isTrusted:Z

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->isTrusted:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->userId:I

    iget v3, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;->userId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->flags:Lcom/android/keyguard/TrustGrantFlags;

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;->flags:Lcom/android/keyguard/TrustGrantFlags;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->isTrusted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->userId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->flags:Lcom/android/keyguard/TrustGrantFlags;

    invoke-virtual {p0}, Lcom/android/keyguard/TrustGrantFlags;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrustModel(isTrusted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->isTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TrustModel;->flags:Lcom/android/keyguard/TrustGrantFlags;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
