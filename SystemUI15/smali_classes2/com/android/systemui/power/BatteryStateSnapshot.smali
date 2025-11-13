.class public final Lcom/android/systemui/power/BatteryStateSnapshot;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final averageTimeToDischargeMillis:J

.field public final batteryLevel:I

.field public final batteryStatus:I

.field public final bucket:I

.field public final isBasedOnUsage:Z

.field public final isLowWarningEnabled:Z

.field public final isPowerSaver:Z

.field public final lowLevelThreshold:I

.field public final lowThresholdMillis:J

.field public final plugged:Z

.field public final severeLevelThreshold:I

.field public final severeThresholdMillis:J

.field public final timeRemainingMillis:J


# direct methods
.method public constructor <init>(IZZIIII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/power/BatteryStateSnapshot;-><init>(IZZIIIIJJJJZZ)V

    return-void
.end method

.method public constructor <init>(IZZIIIIJJJJZZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    move v1, p2

    iput-boolean v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    move v1, p4

    iput v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    move v1, p5

    iput v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    move v1, p6

    iput v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    move v1, p7

    iput v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    move-wide v1, p8

    iput-wide v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->averageTimeToDischargeMillis:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->severeThresholdMillis:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->lowThresholdMillis:J

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->isBasedOnUsage:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->isLowWarningEnabled:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/power/BatteryStateSnapshot;

    iget v1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    iget v3, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    iget-boolean v3, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    iget-boolean v3, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    iget v3, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    iget v3, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    iget v3, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    iget v3, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    iget-wide v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->averageTimeToDischargeMillis:J

    iget-wide v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->averageTimeToDischargeMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->severeThresholdMillis:J

    iget-wide v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->severeThresholdMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->lowThresholdMillis:J

    iget-wide v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->lowThresholdMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isBasedOnUsage:Z

    iget-boolean v3, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isBasedOnUsage:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean p0, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isLowWarningEnabled:Z

    iget-boolean p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isLowWarningEnabled:Z

    if-eq p0, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->averageTimeToDischargeMillis:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->severeThresholdMillis:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->lowThresholdMillis:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isBasedOnUsage:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isLowWarningEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatteryStateSnapshot(batteryLevel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPowerSaver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", severeLevelThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lowLevelThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeRemainingMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", averageTimeToDischargeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->averageTimeToDischargeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", severeThresholdMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->severeThresholdMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lowThresholdMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->lowThresholdMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isBasedOnUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isBasedOnUsage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLowWarningEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isLowWarningEnabled:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
