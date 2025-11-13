.class public final Lcom/android/internal/os/PowerStats;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerStats$Descriptor;,
        Lcom/android/internal/os/PowerStats$DescriptorRegistry;,
        Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    }
.end annotation


# static fields
.field public static final blacklist MAX_STATE_STATS_ARRAY_LENGTH:I

.field public static final blacklist MAX_STATS_ARRAY_LENGTH:I

.field public static final blacklist MAX_UID_STATS_ARRAY_LENGTH:I

.field private static final blacklist PARCEL_FORMAT_VERSION:B = 0x2t

.field private static final blacklist PARCEL_FORMAT_VERSION_MASK:I = 0xff

.field private static final blacklist PARCEL_FORMAT_VERSION_SHIFT:I

.field private static final blacklist STATE_STATS_ARRAY_LENGTH_MASK:I = 0xff0000

.field private static final blacklist STATE_STATS_ARRAY_LENGTH_SHIFT:I

.field private static final blacklist STATS_ARRAY_LENGTH_MASK:I = 0xff00

.field private static final blacklist STATS_ARRAY_LENGTH_SHIFT:I

.field private static final blacklist TAG:Ljava/lang/String; = "PowerStats"

.field private static final blacklist UID_STATS_ARRAY_LENGTH_MASK:I = -0x1000000

.field private static final blacklist UID_STATS_ARRAY_LENGTH_SHIFT:I

.field private static final blacklist VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;


# instance fields
.field public final blacklist descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public blacklist durationMs:J

.field public final blacklist stateStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field public blacklist stats:[J

.field public final blacklist uidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPARCEL_FORMAT_VERSION_SHIFT()I
    .locals 1

    sget v0, Lcom/android/internal/os/PowerStats;->PARCEL_FORMAT_VERSION_SHIFT:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTATE_STATS_ARRAY_LENGTH_SHIFT()I
    .locals 1

    sget v0, Lcom/android/internal/os/PowerStats;->STATE_STATS_ARRAY_LENGTH_SHIFT:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTATS_ARRAY_LENGTH_SHIFT()I
    .locals 1

    sget v0, Lcom/android/internal/os/PowerStats;->STATS_ARRAY_LENGTH_SHIFT:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUID_STATS_ARRAY_LENGTH_SHIFT()I
    .locals 1

    sget v0, Lcom/android/internal/os/PowerStats;->UID_STATS_ARRAY_LENGTH_SHIFT:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    nop

    const/16 v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/internal/os/PowerStats;->PARCEL_FORMAT_VERSION_SHIFT:I

    nop

    const v0, 0xff00

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    sput v1, Lcom/android/internal/os/PowerStats;->STATS_ARRAY_LENGTH_SHIFT:I

    nop

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/internal/os/PowerStats;->MAX_STATS_ARRAY_LENGTH:I

    nop

    const/high16 v0, 0xff0000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    sput v2, Lcom/android/internal/os/PowerStats;->STATE_STATS_ARRAY_LENGTH_SHIFT:I

    nop

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/internal/os/PowerStats;->MAX_STATE_STATS_ARRAY_LENGTH:I

    nop

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    sput v2, Lcom/android/internal/os/PowerStats;->UID_STATS_ARRAY_LENGTH_SHIFT:I

    nop

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/internal/os/PowerStats;->MAX_UID_STATS_ARRAY_LENGTH:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/PowerStats$DescriptorRegistry;)Lcom/android/internal/os/PowerStats;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, " is outside the parcel bounds: "

    const-string v3, "PowerStats end position: "

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    add-int v6, v5, v4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->get(I)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    const-string v10, "PowerStats"

    if-nez v8, :cond_2

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported PowerStats for power component ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-le v6, v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataSize()I

    move-result v10

    if-ge v6, v10, :cond_0

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    :try_start_3
    new-instance v11, Lcom/android/internal/os/PowerStats;

    invoke-direct {v11, v8}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/PowerStats;->durationMs:J

    iget v12, v8, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v12, v12, [J

    iput-object v12, v11, Lcom/android/internal/os/PowerStats;->stats:[J

    sget-object v12, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v13, v11, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v12, v1, v13}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->readLongArray(Landroid/os/Parcel;[J)V

    iget v12, v8, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    iget v15, v8, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    new-array v15, v15, [J

    sget-object v9, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-virtual {v9, v1, v15}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->readLongArray(Landroid/os/Parcel;[J)V

    iget-object v9, v11, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iget v14, v8, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v14, v14, [J

    sget-object v15, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-virtual {v15, v1, v14}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->readLongArray(Landroid/os/Parcel;[J)V

    iget-object v15, v11, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-eq v12, v6, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Corrupted PowerStats parcel. Expected length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actual length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-le v6, v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataSize()I

    move-result v10

    if-ge v6, v10, :cond_5

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_3

    :cond_5
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    :goto_3
    const/4 v2, 0x0

    return-object v2

    :cond_7
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-le v6, v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataSize()I

    move-result v10

    if-ge v6, v10, :cond_8

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_4

    :cond_8
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_9
    :goto_4
    return-object v11

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-le v6, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    if-lt v6, v8, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_b
    throw v0
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v2, p0, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v0, v2}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ") "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    invoke-virtual {v0, v3}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    invoke-virtual {v0, v2}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isBlank()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "UID "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public blacklist formatForBatteryHistory(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    invoke-virtual {v1, v3}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerStats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID "

    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerStats;->formatForBatteryHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    sget-object v2, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->writeLongArray(Landroid/os/Parcel;[J)V

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v3, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->writeLongArray(Landroid/os/Parcel;[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v3, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->writeLongArray(Landroid/os/Parcel;[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v3, v2, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
