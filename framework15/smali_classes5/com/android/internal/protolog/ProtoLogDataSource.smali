.class public Lcom/android/internal/protolog/ProtoLogDataSource;
.super Landroid/tracing/perfetto/DataSource;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;,
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance;,
        Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;,
        Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;,
        Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/tracing/perfetto/DataSource<",
        "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
        "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
        "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mOnFlush:Ljava/lang/Runnable;

.field private final blacklist mOnStart:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnStop:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.protolog"

    invoke-direct {p0, v0}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStart:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlush:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStop:Ljava/util/function/Consumer;

    return-void
.end method

.method private blacklist readProtoLogConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide v1, 0x10b0000007eL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    sget-object v3, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    const-wide v7, 0x10e00000002L

    const/4 v9, 0x2

    if-ne v5, v9, :cond_1

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unhandled ProtoLog tracing mode type"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    sget-object v3, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_1

    :pswitch_1
    nop

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_0

    const-wide v11, 0x20b00000001L

    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v11

    const/4 v5, 0x0

    move-object v13, v3

    const/4 v14, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v15

    if-eq v15, v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v15

    if-ne v15, v10, :cond_2

    move-wide/from16 v16, v11

    const-wide v10, 0x10900000001L

    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_2
    move-wide/from16 v16, v11

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v10

    if-ne v10, v9, :cond_3

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    packed-switch v10, :pswitch_data_1

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unhandled log level"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_2
    sget-object v11, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    move-object v13, v11

    goto :goto_4

    :pswitch_3
    sget-object v11, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    move-object v13, v11

    goto :goto_4

    :pswitch_4
    sget-object v11, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    move-object v13, v11

    goto :goto_4

    :pswitch_5
    sget-object v11, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    move-object v13, v11

    goto :goto_4

    :pswitch_6
    sget-object v11, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    move-object v13, v11

    goto :goto_4

    :pswitch_7
    sget-object v11, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    move-object v13, v11

    :cond_3
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    const-wide v10, 0x10800000003L

    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v14

    move-wide/from16 v11, v16

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    move-wide/from16 v11, v16

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    move-wide/from16 v16, v11

    if-eqz v5, :cond_6

    new-instance v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    invoke-direct {v6, v13, v14}, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Z)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v6, v16

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_0

    :cond_6
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Failed to decode proto config. Got a group override without a group tag."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    new-instance v5, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v6}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Ljava/util/Map;Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig-IA;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateIncrementalStateArgs<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            ">;)",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/internal/protolog/ProtoLogDataSource$Instance;
    .locals 9

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    :try_start_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/16 v2, 0x7e

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->readProtoLogConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ProtoLog config already set in loop"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to parse ProtoLog DataSource config"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    nop

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->-$$Nest$sfgetDEFAULT()Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v0

    :cond_3
    new-instance v8, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStart:Ljava/util/function/Consumer;

    iget-object v6, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlush:Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStop:Ljava/util/function/Consumer;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;-><init>(Landroid/tracing/perfetto/DataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    return-object v8

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to read ProtoLog DataSource config"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateTlsStateArgs<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            ">;)",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/tracing/perfetto/CreateTlsStateArgs;->getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v2, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->-$$Nest$sfgetDEFAULT()Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V

    :cond_0
    return-object v2

    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->-$$Nest$fgetmConfig(Lcom/android/internal/protolog/ProtoLogDataSource$Instance;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState-IA;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public bridge synthetic blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    move-result-object p1

    return-object p1
.end method
