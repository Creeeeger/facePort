.class public Landroid/hardware/gnss/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final blacklist ADR_STATE_HALF_CYCLE_RESOLVED:I = 0x8

.field public static final blacklist ADR_STATE_RESET:I = 0x2

.field public static final blacklist ADR_STATE_UNKNOWN:I = 0x0

.field public static final blacklist ADR_STATE_VALID:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field public static final blacklist HAS_CARRIER_CYCLES:I = 0x400

.field public static final blacklist HAS_CARRIER_FREQUENCY:I = 0x200

.field public static final blacklist HAS_CARRIER_PHASE:I = 0x800

.field public static final blacklist HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field public static final blacklist HAS_CORRELATION_VECTOR:I = 0x200000

.field public static final blacklist HAS_FULL_ISB:I = 0x10000

.field public static final blacklist HAS_FULL_ISB_UNCERTAINTY:I = 0x20000

.field public static final blacklist HAS_SATELLITE_ISB:I = 0x40000

.field public static final blacklist HAS_SATELLITE_ISB_UNCERTAINTY:I = 0x80000

.field public static final blacklist HAS_SATELLITE_PVT:I = 0x100000

.field public static final blacklist HAS_SNR:I = 0x1

.field public static final blacklist STATE_2ND_CODE_LOCK:I = 0x10000

.field public static final blacklist STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final blacklist STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final blacklist STATE_BIT_SYNC:I = 0x2

.field public static final blacklist STATE_CODE_LOCK:I = 0x1

.field public static final blacklist STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final blacklist STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final blacklist STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final blacklist STATE_GLO_STRING_SYNC:I = 0x40

.field public static final blacklist STATE_GLO_TOD_DECODED:I = 0x80

.field public static final blacklist STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final blacklist STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final blacklist STATE_SBAS_SYNC:I = 0x2000

.field public static final blacklist STATE_SUBFRAME_SYNC:I = 0x4

.field public static final blacklist STATE_SYMBOL_SYNC:I = 0x20

.field public static final blacklist STATE_TOW_DECODED:I = 0x8

.field public static final blacklist STATE_TOW_KNOWN:I = 0x4000

.field public static final blacklist STATE_UNKNOWN:I


# instance fields
.field public blacklist accumulatedDeltaRangeM:D

.field public blacklist accumulatedDeltaRangeState:I

.field public blacklist accumulatedDeltaRangeUncertaintyM:D

.field public blacklist agcLevelDb:D

.field public blacklist antennaCN0DbHz:D

.field public blacklist basebandCN0DbHz:D

.field public blacklist carrierCycles:J

.field public blacklist carrierPhase:D

.field public blacklist carrierPhaseUncertainty:D

.field public blacklist correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

.field public blacklist flags:I

.field public blacklist fullInterSignalBiasNs:D

.field public blacklist fullInterSignalBiasUncertaintyNs:D

.field public blacklist multipathIndicator:I

.field public blacklist pseudorangeRateMps:D

.field public blacklist pseudorangeRateUncertaintyMps:D

.field public blacklist receivedSvTimeInNs:J

.field public blacklist receivedSvTimeUncertaintyInNs:J

.field public blacklist satelliteInterSignalBiasNs:D

.field public blacklist satelliteInterSignalBiasUncertaintyNs:D

.field public blacklist satellitePvt:Landroid/hardware/gnss/SatellitePvt;

.field public blacklist signalType:Landroid/hardware/gnss/GnssSignalType;

.field public blacklist snrDb:D

.field public blacklist state:I

.field public blacklist svid:I

.field public blacklist timeOffsetNs:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/gnss/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_3
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getStability()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_35

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :try_start_3
    sget-object v2, Landroid/hardware/gnss/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/GnssSignalType;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_16
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_18
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_21

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_23

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_22

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_22
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_24

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_24
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_27

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_26

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_26
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    :try_start_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_29

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_28

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_28
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2a

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    :try_start_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2f

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2e

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    :try_start_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_31

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_30

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_30
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    :try_start_19
    sget-object v2, Landroid/hardware/gnss/SatellitePvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatellitePvt;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_33

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_32

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_32
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    :try_start_1a
    sget-object v2, Landroid/hardware/gnss/CorrelationVector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/CorrelationVector;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_34

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_34
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_35
    :try_start_1b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_36

    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
