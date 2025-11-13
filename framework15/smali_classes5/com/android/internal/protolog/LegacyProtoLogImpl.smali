.class public Lcom/android/internal/protolog/LegacyProtoLogImpl;
.super Ljava/lang/Object;
.source "LegacyProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# static fields
.field private static final blacklist BUFFER_CAPACITY:I = 0x100000

.field private static final blacklist MAGIC_NUMBER_VALUE:J = 0x474f4c4f544f5250L

.field private static final blacklist PER_CHUNK_SIZE:I = 0x400

.field static final blacklist PROTOLOG_VERSION:Ljava/lang/String; = "2.0.0"

.field private static final blacklist TAG:Ljava/lang/String; = "ProtoLog"


# instance fields
.field private final blacklist mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mCacheUpdater:Ljava/lang/Runnable;

.field private final blacklist mLegacyViewerConfigFilename:Ljava/lang/String;

.field private final blacklist mLogFile:Ljava/io/File;

.field private final blacklist mLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPerChunkSize:I

.field private blacklist mProtoLogEnabled:Z

.field private final blacklist mProtoLogEnabledLock:Ljava/lang/Object;

.field private blacklist mProtoLogEnabledLockFree:Z

.field private final blacklist mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;ILjava/util/TreeMap;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;",
            "I",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, p3}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iput-object p2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLegacyViewerConfigFilename:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    iput p5, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mPerChunkSize:I

    iput-object p6, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    iput-object p7, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mCacheUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    invoke-direct {v4}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;-><init>()V

    const/16 v5, 0x400

    const/high16 v3, 0x100000

    move-object v0, p0

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/protolog/LegacyProtoLogImpl;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;ILjava/util/TreeMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getStatus$3(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getStatus$4(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$logToProto$0(Ljava/lang/Long;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$logToProto$1(Ljava/lang/Double;)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$onShellCommand$2(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    invoke-virtual {v1, p3, p4}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->getViewerString(J)Ljava/lang/String;

    move-result-object p5

    :cond_0
    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    :try_start_0
    invoke-static {p5, p6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ProtoLog"

    const-string v3, "Invalid ProtoLog format string."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move-object v0, p5

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN MESSAGE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, p6, v3

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logToProto(JI[Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, "ProtoLog"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    iget v4, v1, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mPerChunkSize:I

    invoke-direct {v0, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    move-object v4, v0

    const-wide v5, 0x20b00000004L

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x11000000007L

    move-wide/from16 v9, p1

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    const-wide v11, 0x10600000002L

    invoke-virtual {v4, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    array-length v12, v2

    const/4 v13, 0x0

    move v14, v13

    move v13, v0

    :goto_0
    if-ge v14, v12, :cond_1

    aget-object v0, v2, v14

    move-object v15, v0

    move/from16 v2, p3

    invoke-static {v2, v13}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v16, v0

    const-wide v9, 0x20900000003L

    packed-switch v16, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_2
    move-object v0, v15

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    move-object v0, v15

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    move-object v0, v15

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(INVALID PARAMS_MASK) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide v1, 0x20900000003L

    invoke-virtual {v4, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-string v1, "Invalid ProtoLog paramsMask"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    nop

    :goto_2
    nop

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v9, p1

    move-object/from16 v2, p4

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    nop

    invoke-virtual {v7}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    const-wide v1, 0x51200000004L

    invoke-virtual {v4, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedSInt64(J[J)V

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    nop

    invoke-virtual {v8}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    const-wide v1, 0x50100000005L

    invoke-virtual {v4, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedDouble(J[D)V

    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const-wide v1, 0x50800000006L

    invoke-virtual {v4, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedBool(J[Z)V

    :cond_5
    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v1, p0

    :try_start_4
    iget-object v0, v1, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    const-string v2, "Exception while logging to proto"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs blacklist setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_2

    aget-object v1, p4, v0

    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v2, p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    goto :goto_1

    :cond_0
    invoke-interface {v2, p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToProto(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No IProtoLogGroup named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist unknownCommand(Ljava/io/PrintWriter;)I
    .locals 1

    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  start: Start proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  stop: Stop proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable [group...]: Enable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable [group...]: Disable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method private blacklist writeProtoLogToFileLocked()V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    iget v3, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mPerChunkSize:I

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    const-wide v3, 0x10600000001L

    const-wide v5, 0x474f4c4f544f5250L

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string v3, "2.0.0"

    const-wide v4, 0x10900000002L

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10600000003L

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v3, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ProtoLog"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getStatus()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoLog status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enabled"

    goto :goto_0

    :cond_0
    const-string v1, "Disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nEnabled log groups: \n  Proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Logcat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLogging definitions loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    invoke-virtual {v1}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->knownViewerStringsNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isProtoEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLockFree:Z

    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p4, p5, p7}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logToProto(JI[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;JLjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public blacklist onShellCommand(Landroid/os/ShellCommand;)I
    .locals 9

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v6, "disable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_1
    const-string/jumbo v6, "start"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_2

    :sswitch_2
    const-string/jumbo v6, "stop"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_2

    :sswitch_3
    const-string/jumbo v6, "status"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_4
    const-string v6, "disable-text"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_5
    const-string v6, "enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_6
    const-string v6, "enable-text"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v6

    return v6

    :pswitch_0
    invoke-direct {p0, v7, v8, v3, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v6

    return v6

    :pswitch_1
    invoke-direct {p0, v8, v8, v3, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v6

    return v6

    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    iget-object v8, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLegacyViewerConfigFilename:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->loadViewerConfig(Lcom/android/internal/protolog/common/ILogger;Ljava/lang/String;)V

    invoke-direct {p0, v7, v7, v3, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v6

    return v6

    :pswitch_3
    invoke-direct {p0, v8, v7, v3, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v6

    return v6

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v8

    :pswitch_5
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    return v8

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57eac4c9 -> :sswitch_6
        -0x4d6ada7d -> :sswitch_5
        -0x3d842b0e -> :sswitch_4
        -0x3532300e -> :sswitch_3
        0x360802 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/internal/protolog/LegacyProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLegacyViewerConfigFilename:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->loadViewerConfig(Lcom/android/internal/protolog/common/ILogger;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, p2, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist startProtoLog(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLockFree:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist stopProtoLog(Ljava/io/PrintWriter;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Waiting for log to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabled:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->writeProtoLogToFileLocked()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabled:Z

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const-string v1, "ERROR: logging was re-enabled while waiting for flush."

    invoke-static {p1, v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "logging enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
