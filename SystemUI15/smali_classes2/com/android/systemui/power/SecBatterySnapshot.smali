.class public final Lcom/android/systemui/power/SecBatterySnapshot;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final automaticTestMode:Z

.field public final batteryHealth:I

.field public final batteryLevel:I

.field public final chargingTime:J

.field public final chargingType:I

.field public final currentBatteryMode:I

.field public final isHiccupState:Z

.field public final optimizationChargingFinishTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/power/SecBatterySnapshot;-><init>(IIJIIZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJIIZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->batteryLevel:I

    iput p2, p0, Lcom/android/systemui/power/SecBatterySnapshot;->currentBatteryMode:I

    iput-wide p3, p0, Lcom/android/systemui/power/SecBatterySnapshot;->chargingTime:J

    iput p5, p0, Lcom/android/systemui/power/SecBatterySnapshot;->chargingType:I

    iput p6, p0, Lcom/android/systemui/power/SecBatterySnapshot;->batteryHealth:I

    iput-boolean p7, p0, Lcom/android/systemui/power/SecBatterySnapshot;->isHiccupState:Z

    iput-boolean p8, p0, Lcom/android/systemui/power/SecBatterySnapshot;->automaticTestMode:Z

    iput-object p9, p0, Lcom/android/systemui/power/SecBatterySnapshot;->optimizationChargingFinishTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIJIIZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v3, p8

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, ""

    goto :goto_7

    :cond_7
    move-object/from16 v0, p9

    :goto_7
    move p1, v1

    move p2, v2

    move-wide p3, v4

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v3

    move-object/from16 p9, v0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/power/SecBatterySnapshot;-><init>(IIJIIZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/power/SecBatterySnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/power/SecBatterySnapshot;

    iget v1, p1, Lcom/android/systemui/power/SecBatterySnapshot;->batteryLevel:I

    iget v3, p0, Lcom/android/systemui/power/SecBatterySnapshot;->batteryLevel:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->currentBatteryMode:I

    iget v3, p1, Lcom/android/systemui/power/SecBatterySnapshot;->currentBatteryMode:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/power/SecBatterySnapshot;->chargingTime:J

    iget-wide v5, p1, Lcom/android/systemui/power/SecBatterySnapshot;->chargingTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->chargingType:I

    iget v3, p1, Lcom/android/systemui/power/SecBatterySnapshot;->chargingType:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->batteryHealth:I

    iget v3, p1, Lcom/android/systemui/power/SecBatterySnapshot;->batteryHealth:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->isHiccupState:Z

    iget-boolean v3, p1, Lcom/android/systemui/power/SecBatterySnapshot;->isHiccupState:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->automaticTestMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/power/SecBatterySnapshot;->automaticTestMode:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/power/SecBatterySnapshot;->optimizationChargingFinishTime:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/power/SecBatterySnapshot;->optimizationChargingFinishTime:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/power/SecBatterySnapshot;->batteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/power/SecBatterySnapshot;->currentBatteryMode:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/power/SecBatterySnapshot;->chargingTime:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/power/SecBatterySnapshot;->chargingType:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/power/SecBatterySnapshot;->batteryHealth:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/power/SecBatterySnapshot;->isHiccupState:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/power/SecBatterySnapshot;->automaticTestMode:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/power/SecBatterySnapshot;->optimizationChargingFinishTime:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecBatteryStatsSnapshot { batteryLevel = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentBatteryMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->currentBatteryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chargingTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->chargingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", chargingType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->chargingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->batteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHiccupState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->isHiccupState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", automaticTestMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/SecBatterySnapshot;->automaticTestMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", optChargingFinishTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/power/SecBatterySnapshot;->optimizationChargingFinishTime:Ljava/lang/String;

    const-string v1, " }"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
