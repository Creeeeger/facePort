.class public final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public choreographerOnly:Z

.field public deliveryTime:J

.field public dispatchTime:J

.field public lastEnabledTime:J

.field public logHandler:Lkotlin/jvm/functions/Function2;

.field public final type:I


# direct methods
.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;-><init>(IJJJZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJJJZLkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJZ",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    iput-wide p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    iput-wide p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    iput-wide p6, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    iput-boolean p8, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    iput-object p9, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(IJJJZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, p10, 0x2

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    move-wide v4, p2

    :goto_1
    and-int/lit8 v1, p10, 0x4

    if-eqz v1, :cond_2

    move-wide v6, v2

    goto :goto_2

    :cond_2
    move-wide v6, p4

    :goto_2
    and-int/lit8 v1, p10, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v2, p6

    :goto_3
    and-int/lit8 v1, p10, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    move/from16 v1, p8

    :goto_4
    and-int/lit8 v8, p10, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p9

    :goto_5
    move p1, v0

    move-wide p2, v4

    move-wide p4, v6

    move-wide p6, v2

    move/from16 p8, v1

    move-object/from16 p9, v8

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;-><init>(IJJJZLkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    iget v1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    iget v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    iget-wide v5, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    iget-wide v5, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    iget-wide v5, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    iget-boolean v3, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    iget-wide v4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->lastEnabledTime:J

    iget-boolean v6, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->choreographerOnly:Z

    iget-object v7, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->logHandler:Lkotlin/jvm/functions/Function2;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LogType(type="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->type:I

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", dispatchTime="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", deliveryTime="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", lastEnabledTime="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", choreographerOnly="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", logHandler="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
