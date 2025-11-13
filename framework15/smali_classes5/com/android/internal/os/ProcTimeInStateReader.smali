.class public Lcom/android/internal/os/ProcTimeInStateReader;
.super Ljava/lang/Object;
.source "ProcTimeInStateReader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcTimeInStateReader"

.field private static final blacklist TIME_IN_STATE_HEADER_LINE_FORMAT:[I

.field private static final blacklist TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

.field private static final blacklist TIME_IN_STATE_LINE_TIME_FORMAT:[I


# instance fields
.field private blacklist mFrequenciesKhz:[J

.field private blacklist mTimeInStateTimeFormat:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const/16 v0, 0x2020

    const/16 v1, 0xa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    const/16 v0, 0x20

    const/16 v2, 0x200a

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/os/ProcTimeInStateReader;->initializeTimeInStateFormat(Ljava/nio/file/Path;)V

    return-void
.end method

.method private blacklist initializeTimeInStateFormat(Ljava/nio/file/Path;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v7

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v10, v0

    :goto_0
    array-length v0, v7

    if-ge v1, v0, :cond_2

    aget-byte v0, v7, v1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    invoke-virtual {v8, v0}, Landroid/util/IntArray;->addAll([I)V

    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    invoke-virtual {v9, v0}, Landroid/util/IntArray;->addAll([I)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    invoke-virtual {v8, v0}, Landroid/util/IntArray;->addAll([I)V

    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    invoke-virtual {v9, v0}, Landroid/util/IntArray;->addAll([I)V

    add-int/lit8 v10, v10, 0x1

    :goto_1
    array-length v0, v7

    if-ge v1, v0, :cond_1

    aget-byte v0, v7, v1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v10, :cond_4

    new-array v11, v10, [J

    array-length v2, v7

    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v5, v11

    invoke-static/range {v0 .. v6}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    iput-object v11, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    return-void

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse time_in_state file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty time_in_state file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getFrequenciesKhz()[J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    return-object v0
.end method

.method public blacklist getUsageTimesMillis(Ljava/nio/file/Path;)[J
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    array-length v0, v0

    new-array v0, v0, [J

    nop

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-wide v3, v0, v2

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
