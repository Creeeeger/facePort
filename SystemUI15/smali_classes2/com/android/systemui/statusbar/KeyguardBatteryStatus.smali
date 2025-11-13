.class public final Lcom/android/systemui/statusbar/KeyguardBatteryStatus;
.super Lcom/android/settingslib/fuelgauge/BatteryStatus;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final highVoltage:Z

.field public final mSlowCharger:I

.field public final mSuperFastCharger:I

.field public final online:I

.field public final protectedFully:Z

.field public remaining:J

.field public final swellingMode:I


# direct methods
.method public constructor <init>(IIIIIIZIIZI)V
    .locals 8

    move-object v7, p0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(IIIIIZ)V

    const-wide/16 v0, -0x1

    iput-wide v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    move v0, p6

    iput v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    move v0, p7

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    move/from16 v0, p8

    iput v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    move/from16 v0, p9

    iput v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    move/from16 v0, p10

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->protectedFully:Z

    move/from16 v0, p11

    iput v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSlowCharger:I

    return-void
.end method

.method public constructor <init>(IIIIIIZZ)V
    .locals 12

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;-><init>(IIIIIIZIIZI)V

    return-void
.end method


# virtual methods
.method public final isPluggedIn()Z
    .locals 2

    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatteryStatus{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",chargingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",maxChargingWattage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ultraFastCharger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
