.class public final Lcom/android/systemui/shade/carrier/ServiceStateInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final connected:Z

.field public final isEmergency:Z

.field public final isRoaming:Z

.field public final networkType:I

.field public final voiceNetworkType:I


# direct methods
.method public constructor <init>(IIZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    iput p2, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    iput-boolean p3, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    iput-boolean p4, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isRoaming:Z

    iput-boolean p5, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    iget v1, p1, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    iget v3, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    iget v3, p1, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    iget-boolean v3, p1, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isRoaming:Z

    iget-boolean v3, p1, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isRoaming:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    iget-boolean p1, p1, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isRoaming:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceStateInfo(networkType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
