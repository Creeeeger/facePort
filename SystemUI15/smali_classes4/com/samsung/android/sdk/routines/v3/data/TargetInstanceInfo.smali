.class public final Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

.field private instanceId:J

.field private final intentParam:Ljava/lang/String;

.field private final labelParam:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->tag:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->intentParam:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->labelParam:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;ILjava/lang/Object;)Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->tag:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->intentParam:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->labelParam:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    goto :goto_5

    :cond_5
    move-object v7, p7

    :goto_5
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;)Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->intentParam:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->labelParam:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    return-object p0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;)Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;
    .locals 8

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    iget-wide v3, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->intentParam:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->intentParam:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->labelParam:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->labelParam:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    iget-object p1, p1, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getExtra()Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    return-object p0
.end method

.method public final getInstanceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    return-wide v0
.end method

.method public final getIntentParam()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->intentParam:Ljava/lang/String;

    return-object p0
.end method

.method public final getLabelParam()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->labelParam:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->intentParam:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->labelParam:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setInstanceId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetInstanceInfo(instanceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->instanceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intentParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->intentParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", labelParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->labelParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->extra:Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfoExtra;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
