.class public final Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurement"
.end annotation


# instance fields
.field public blacklist accumulatedDeltaRangeM:D

.field public blacklist accumulatedDeltaRangeState:S

.field public blacklist accumulatedDeltaRangeUncertaintyM:D

.field public blacklist agcLevelDb:D

.field public blacklist cN0DbHz:D

.field public blacklist carrierCycles:J

.field public blacklist carrierFrequencyHz:F

.field public blacklist carrierPhase:D

.field public blacklist carrierPhaseUncertainty:D

.field public blacklist constellation:B

.field public blacklist flags:I

.field public blacklist multipathIndicator:B

.field public blacklist pseudorangeRateMps:D

.field public blacklist pseudorangeRateUncertaintyMps:D

.field public blacklist receivedSvTimeInNs:J

.field public blacklist receivedSvTimeUncertaintyInNs:J

.field public blacklist snrDb:D

.field public blacklist state:I

.field public blacklist svid:S

.field public blacklist timeOffsetNs:D


# direct methods
.method public constructor blacklist <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    const/4 v5, 0x0

    iput v5, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x90

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    mul-int/lit16 v6, v4, 0x90

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x90

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    mul-int/lit16 v5, v3, 0x90

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6

    return v1

    :cond_6
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    return v1

    :cond_8
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    return v1

    :cond_9
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_a

    return v1

    :cond_a
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_b

    return v1

    :cond_b
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_c

    return v1

    :cond_c
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v1

    :cond_d
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_e

    return v1

    :cond_e
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_f

    return v1

    :cond_f
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_10

    return v1

    :cond_10
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11

    return v1

    :cond_11
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_12

    return v1

    :cond_12
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_13

    return v1

    :cond_13
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    if-eq v3, v4, :cond_14

    return v1

    :cond_14
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_15

    return v1

    :cond_15
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-short v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-byte v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v10, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-wide v11, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-short v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-wide v13, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-wide v14, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v22, v2

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-byte v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v2, v22

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    const-wide/16 v0, 0x48

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    const-wide/16 v0, 0x50

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    const-wide/16 v0, 0x58

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    const-wide/16 v0, 0x60

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    const-wide/16 v0, 0x68

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    const-wide/16 v0, 0x70

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    const-wide/16 v0, 0x78

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    const-wide/16 v0, 0x80

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    const-wide/16 v0, 0x88

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x90

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurementFlags;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .timeOffsetNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurementState;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .receivedSvTimeInNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .receivedSvTimeUncertaintyInNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .cN0DbHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .pseudorangeRateMps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .pseudorangeRateUncertaintyMps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .accumulatedDeltaRangeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssAccumulatedDeltaRangeState;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .accumulatedDeltaRangeM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .accumulatedDeltaRangeUncertaintyM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .carrierFrequencyHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .carrierCycles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .carrierPhase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .carrierPhaseUncertainty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .multipathIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMultipathIndicator;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .snrDb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .agcLevelDb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x78

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x80

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0x88

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x90

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
