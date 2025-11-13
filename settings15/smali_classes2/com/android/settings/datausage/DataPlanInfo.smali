.class public final Lcom/android/settings/datausage/DataPlanInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cycleEnd:Ljava/lang/Long;

.field public final cycleStart:Ljava/lang/Long;

.field public final dataBarSize:J

.field public final dataPlanCount:I

.field public final dataPlanSize:J

.field public final dataPlanUse:J

.field public final snapshotTime:J


# direct methods
.method public constructor <init>(IJJJLjava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanCount:I

    iput-wide p2, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanSize:J

    iput-wide p4, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataBarSize:J

    iput-wide p6, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanUse:J

    iput-object p8, p0, Lcom/android/settings/datausage/DataPlanInfo;->cycleEnd:Ljava/lang/Long;

    iput-wide p9, p0, Lcom/android/settings/datausage/DataPlanInfo;->snapshotTime:J

    iput-object p11, p0, Lcom/android/settings/datausage/DataPlanInfo;->cycleStart:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/datausage/DataPlanInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/datausage/DataPlanInfo;

    iget v1, p1, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanCount:I

    iget v3, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanCount:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanSize:J

    iget-wide v5, p1, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataBarSize:J

    iget-wide v5, p1, Lcom/android/settings/datausage/DataPlanInfo;->dataBarSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanUse:J

    iget-wide v5, p1, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanUse:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/DataPlanInfo;->cycleEnd:Ljava/lang/Long;

    iget-object v3, p1, Lcom/android/settings/datausage/DataPlanInfo;->cycleEnd:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/android/settings/datausage/DataPlanInfo;->snapshotTime:J

    iget-wide v5, p1, Lcom/android/settings/datausage/DataPlanInfo;->snapshotTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/android/settings/datausage/DataPlanInfo;->cycleStart:Ljava/lang/Long;

    iget-object p1, p1, Lcom/android/settings/datausage/DataPlanInfo;->cycleStart:Ljava/lang/Long;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanSize:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataBarSize:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanUse:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/DataPlanInfo;->cycleEnd:Ljava/lang/Long;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lcom/android/settings/datausage/DataPlanInfo;->snapshotTime:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/datausage/DataPlanInfo;->cycleStart:Ljava/lang/Long;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataPlanInfo(dataPlanCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataPlanSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dataBarSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataBarSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dataPlanUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanUse:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cycleEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/datausage/DataPlanInfo;->cycleEnd:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshotTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/datausage/DataPlanInfo;->snapshotTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cycleStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/datausage/DataPlanInfo;->cycleStart:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
