.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final greylist-max-o HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final blacklist MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

.field public static final greylist-max-o NANOS_PER_MS:J = 0xf4240L

.field private static final greylist-max-o SECONDS_PER_DAY:I = 0x15180

.field private static final greylist-max-o SECONDS_PER_HOUR:I = 0xe10

.field private static final greylist-max-o SECONDS_PER_MINUTE:I = 0x3c

.field public static final blacklist sDumpDateFormat:Ljava/text/SimpleDateFormat;

.field private static greylist-max-o sFormatStr:[C

.field private static final greylist-max-o sFormatSync:Ljava/lang/Object;

.field private static final greylist-max-o sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static greylist-max-o sTmpFormatStr:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    nop

    const-wide v0, 0x16806b5bc00L

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x1d

    new-array v1, v0, [C

    sput-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o accumField(IIZI)I
    .locals 2

    const/16 v0, 0x3e7

    if-le p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    add-int v1, v0, p1

    return v1

    :cond_1
    const/16 v0, 0x63

    if-gt p0, v0, :cond_7

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    if-lt p3, v0, :cond_2

    goto :goto_3

    :cond_2
    const/16 v0, 0x9

    if-gt p0, v0, :cond_6

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    goto :goto_2

    :cond_3
    if-nez p2, :cond_5

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    :goto_1
    add-int/lit8 v0, p1, 0x1

    return v0

    :cond_6
    :goto_2
    add-int/lit8 v0, p1, 0x2

    return v0

    :cond_7
    :goto_3
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public static blacklist dumpTime(Ljava/io/PrintWriter;J)V
    .locals 2

    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V
    .locals 2

    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const-string v0, " (now)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static greylist-max-o formatDuration(J)Ljava/lang/String;
    .locals 5

    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static blacklist formatDuration(JJLjava/lang/StringBuilder;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    return-void
.end method

.method public static greylist-max-p formatDuration(JLjava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static greylist-max-p formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5

    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4

    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o formatDuration(JLjava/lang/StringBuilder;I)V
    .locals 4

    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o formatDurationLocked(JI)I
    .locals 27

    move-wide/from16 v0, p0

    move/from16 v2, p2

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    new-array v3, v2, [C

    sput-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    :cond_0
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x20

    if-nez v6, :cond_2

    const/4 v4, 0x0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v4, v2, :cond_1

    add-int/lit8 v5, v4, 0x1

    aput-char v7, v3, v4

    move v4, v5

    goto :goto_0

    :cond_1
    const/16 v5, 0x30

    aput-char v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    return v5

    :cond_2
    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    const/16 v4, 0x2b

    move v10, v4

    goto :goto_1

    :cond_3
    const/16 v4, 0x2d

    neg-long v0, v0

    move v10, v4

    :goto_1
    const-wide/16 v4, 0x3e8

    rem-long v8, v0, v4

    long-to-int v11, v8

    div-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0x15180

    if-lt v4, v9, :cond_4

    div-int v5, v4, v9

    mul-int/2addr v9, v5

    sub-int/2addr v4, v9

    move v12, v5

    goto :goto_2

    :cond_4
    move v12, v5

    :goto_2
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_5

    div-int/lit16 v6, v4, 0xe10

    mul-int/lit16 v5, v6, 0xe10

    sub-int/2addr v4, v5

    move v13, v6

    goto :goto_3

    :cond_5
    move v13, v6

    :goto_3
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_6

    div-int/lit8 v8, v4, 0x3c

    mul-int/lit8 v5, v8, 0x3c

    sub-int/2addr v4, v5

    move v14, v4

    move v15, v8

    goto :goto_4

    :cond_6
    move v14, v4

    move v15, v8

    :goto_4
    const/4 v4, 0x0

    const/16 v16, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_b

    invoke-static {v12, v6, v8, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    if-lez v5, :cond_7

    move v8, v6

    :cond_7
    invoke-static {v13, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    if-lez v5, :cond_8

    move v8, v6

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    invoke-static {v15, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    if-lez v5, :cond_9

    move v8, v6

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    invoke-static {v14, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    if-lez v5, :cond_a

    move/from16 v8, v16

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_7
    invoke-static {v11, v9, v6, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v5, v8

    :goto_8
    if-ge v5, v2, :cond_b

    aput-char v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    aput-char v10, v3, v4

    add-int/lit8 v17, v4, 0x1

    move/from16 v8, v17

    if-eqz v2, :cond_c

    move v4, v6

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    move/from16 v18, v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v7, 0x64

    move-object v4, v3

    move v5, v12

    move/from16 v21, v6

    move v6, v7

    move/from16 v7, v17

    move/from16 v22, v8

    const/16 v23, 0x0

    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    move/from16 v8, v22

    if-eq v9, v8, :cond_d

    move/from16 v17, v21

    goto :goto_a

    :cond_d
    move/from16 v17, v23

    :goto_a
    if-eqz v18, :cond_e

    move/from16 v20, v19

    goto :goto_b

    :cond_e
    move/from16 v20, v23

    :goto_b
    const/16 v6, 0x68

    move-object v4, v3

    move v5, v13

    move v7, v9

    move/from16 v24, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    move/from16 v8, v24

    if-eq v9, v8, :cond_f

    move/from16 v17, v21

    goto :goto_c

    :cond_f
    move/from16 v17, v23

    :goto_c
    if-eqz v18, :cond_10

    move/from16 v20, v19

    goto :goto_d

    :cond_10
    move/from16 v20, v23

    :goto_d
    const/16 v6, 0x6d

    move-object v4, v3

    move v5, v15

    move v7, v9

    move/from16 v25, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    move/from16 v8, v25

    if-eq v9, v8, :cond_11

    goto :goto_e

    :cond_11
    move/from16 v21, v23

    :goto_e
    if-eqz v18, :cond_12

    goto :goto_f

    :cond_12
    move/from16 v19, v23

    :goto_f
    const/16 v6, 0x73

    move-object v4, v3

    move v5, v14

    move v7, v9

    move/from16 v26, v8

    move/from16 v8, v21

    move/from16 v17, v9

    move/from16 v9, v19

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    if-eqz v18, :cond_13

    move/from16 v8, v26

    if-eq v9, v8, :cond_14

    goto :goto_10

    :cond_13
    move/from16 v8, v26

    :cond_14
    move/from16 v16, v23

    :goto_10
    const/16 v6, 0x6d

    const/16 v17, 0x1

    move-object v4, v3

    move v5, v11

    move v7, v9

    move/from16 v19, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v4

    const/16 v5, 0x73

    aput-char v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    return v5
.end method

.method public static greylist-max-o formatForLogging(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_0
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist formatRealtime(J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist formatTime(JJ)Ljava/lang/String;
    .locals 5

    sub-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o formatUptime(J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 9

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v7

    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v8

    if-nez v8, :cond_1

    return-object v0

    :cond_1
    move-object v1, v8

    move-wide v2, p2

    move-object v4, v7

    move v5, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static whitelist getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static whitelist getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getTimeZoneIdsForCountryCode(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v0

    nop

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    sget-object v5, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    invoke-virtual {v4, v5}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPickerAt(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "countryCode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-r logTimeOfDay(J)Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-virtual {v6, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v7, "%tm-%td %tH:%tM:%tS.%tL"

    move-object v0, v6

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o printFieldLocked([CICIZI)I
    .locals 5

    if-nez p4, :cond_0

    if-lez p1, :cond_a

    :cond_0
    move v0, p3

    const/16 v1, 0x3e7

    if-le p1, v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    rem-int/lit8 v2, p1, 0xa

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 v4, v2, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    const/4 v1, 0x3

    if-ge p5, v1, :cond_5

    :cond_4
    const/16 v1, 0x63

    if-le p1, v1, :cond_6

    :cond_5
    div-int/lit8 v1, p1, 0x64

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    :cond_6
    if-eqz p4, :cond_7

    const/4 v1, 0x2

    if-ge p5, v1, :cond_8

    :cond_7
    const/16 v1, 0x9

    if-gt p1, v1, :cond_8

    if-eq v0, p3, :cond_9

    :cond_8
    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr p1, v2

    :cond_9
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    add-int/lit8 p3, p3, 0x1

    :goto_2
    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_a
    return p3
.end method
