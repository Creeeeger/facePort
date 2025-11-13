.class public final Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;
.super Lcom/android/systemui/keyguard/shared/model/TrustMessage;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isTrustManaged:Z

.field public final userId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/shared/model/TrustMessage;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->userId:I

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->isTrustManaged:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;

    iget v1, p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->userId:I

    iget v3, p0, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->userId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->isTrustManaged:Z

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->isTrustManaged:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->isTrustManaged:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrustManagedModel(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTrustManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->isTrustManaged:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
