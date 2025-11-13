.class public Lcom/android/internal/protolog/BaseProtoLogImpl;
.super Ljava/lang/Object;
.source "BaseProtoLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;
    }
.end annotation


# static fields
.field protected static final blacklist LOG_GROUPS:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAGIC_NUMBER_VALUE:J = 0x474f4c4f544f5250L

.field static final blacklist PROTOLOG_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final blacklist TAG:Ljava/lang/String; = "ProtoLog"

.field public static blacklist sCacheUpdater:Ljava/lang/Runnable;


# instance fields
.field private final blacklist mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mLogFile:Ljava/io/File;

.field private blacklist mProtoLogEnabled:Z

.field private final blacklist mProtoLogEnabledLock:Ljava/lang/Object;

.field private blacklist mProtoLogEnabledLockFree:Z

.field protected final blacklist mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

.field private final blacklist mViewerConfigFilename:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    .line 64
    new-instance v0, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "viewerConfigFilename"    # Ljava/lang/String;
    .param p3, "bufferCapacity"    # I
    .param p4, "viewerConfig"    # Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    .line 218
    iput-object p1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    .line 219
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, p3}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 220
    iput-object p2, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfigFilename:Ljava/lang/String;

    .line 221
    iput-object p4, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 222
    return-void
.end method

.method protected static blacklist addLogGroupEnum([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 5
    .param p0, "config"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 67
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 68
    .local v2, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    sget-object v3, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$getStatus$3(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .locals 1
    .param p0, "it"    # Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 353
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
    .param p0, "it"    # Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 357
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

.method static synthetic blacklist lambda$logToProto$1(Ljava/lang/Long;)J
    .locals 2
    .param p0, "i"    # Ljava/lang/Long;

    .line 195
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$logToProto$2(Ljava/lang/Double;)D
    .locals 2
    .param p0, "i"    # Ljava/lang/Double;

    .line 199
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$static$0()V
    .locals 0

    .line 64
    return-void
.end method

.method static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 377
    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 382
    :cond_0
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;
    .param p3, "messageHash"    # I
    .param p4, "messageString"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "message":Ljava/lang/String;
    if-nez p4, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v1, p3}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->getViewerString(I)Ljava/lang/String;

    move-result-object p4

    .line 110
    :cond_0
    if-eqz p4, :cond_1

    .line 112
    :try_start_0
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/util/IllegalFormatConversionException;
    const-string v2, "ProtoLog"

    const-string v3, "Invalid ProtoLog format string."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v1    # "ex":Ljava/util/IllegalFormatConversionException;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN MESSAGE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v2, p5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p5, v3

    .line 120
    .local v4, "o":Ljava/lang/Object;
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private blacklist logToProto(II[Ljava/lang/Object;)V
    .locals 20
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .line 155
    move-object/from16 v1, p3

    const-string v2, "ProtoLog"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v3, v0

    .line 160
    .local v3, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 161
    .local v4, "token":J
    const-wide v6, 0x10f00000001L

    move/from16 v8, p1

    :try_start_1
    invoke-virtual {v3, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 162
    const-wide v6, 0x10600000002L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    invoke-virtual {v3, v6, v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 164
    if-eqz v1, :cond_5

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "argIndex":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v6, "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v7, "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v9, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    array-length v10, v1

    const/4 v11, 0x0

    move v12, v11

    move v11, v0

    .end local v0    # "argIndex":I
    .local v11, "argIndex":I
    :goto_0
    if-ge v12, v10, :cond_1

    aget-object v0, v1, v12

    move-object v13, v0

    .line 170
    .local v13, "o":Ljava/lang/Object;
    move/from16 v14, p2

    invoke-static {v14, v11}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v15, v0

    .line 172
    .local v15, "type":I
    move-wide/from16 v16, v4

    .end local v4    # "token":J
    .local v16, "token":J
    const-wide v4, 0x20900000003L

    packed-switch v15, :pswitch_data_0

    move-object v5, v13

    .end local v13    # "o":Ljava/lang/Object;
    .local v5, "o":Ljava/lang/Object;
    goto :goto_1

    .line 183
    .end local v5    # "o":Ljava/lang/Object;
    .restart local v13    # "o":Ljava/lang/Object;
    :pswitch_0
    :try_start_2
    move-object v0, v13

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v13

    goto :goto_1

    .line 180
    :pswitch_1
    move-object v0, v13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    move-object v5, v13

    goto :goto_1

    .line 177
    :pswitch_2
    move-object v0, v13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    move-object v5, v13

    goto :goto_1

    .line 174
    :pswitch_3
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    move-object v5, v13

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/ClassCastException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(INVALID PARAMS_MASK) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v13

    const-wide v13, 0x20900000003L

    .end local v13    # "o":Ljava/lang/Object;
    .restart local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v3, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 189
    const-string v4, "Invalid ProtoLog paramsMask"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 190
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :goto_1
    nop

    .line 191
    :goto_2
    nop

    .end local v5    # "o":Ljava/lang/Object;
    .end local v15    # "type":I
    add-int/lit8 v11, v11, 0x1

    .line 169
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v16

    goto/16 :goto_0

    .line 193
    .end local v16    # "token":J
    .restart local v4    # "token":J
    :cond_1
    move-wide/from16 v16, v4

    .end local v4    # "token":J
    .restart local v16    # "token":J
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 194
    const-wide v4, 0x51200000004L

    .line 195
    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v10, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    .line 194
    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedSInt64(J[J)V

    .line 197
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 198
    const-wide v4, 0x50100000005L

    .line 199
    invoke-virtual {v7}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v10, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    .line 198
    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedDouble(J[D)V

    .line 201
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 202
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 203
    .local v0, "arr":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 204
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 206
    .end local v4    # "i":I
    :cond_4
    const-wide v4, 0x50800000006L

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedBool(J[Z)V

    goto :goto_4

    .line 164
    .end local v0    # "arr":[Z
    .end local v6    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v9    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v11    # "argIndex":I
    .end local v16    # "token":J
    .local v4, "token":J
    :cond_5
    move-wide/from16 v16, v4

    .line 209
    .end local v4    # "token":J
    .restart local v16    # "token":J
    :cond_6
    :goto_4
    move-wide/from16 v4, v16

    .end local v16    # "token":J
    .restart local v4    # "token":J
    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 210
    move-object/from16 v6, p0

    :try_start_4
    iget-object v0, v6, Lcom/android/internal/protolog/BaseProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 213
    .end local v3    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v4    # "token":J
    goto :goto_6

    .line 211
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v8, p1

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    const-string v3, "Exception while logging to proto"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist unknownCommand(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 295
    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    const-string v0, "  start: Start proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    const-string v0, "  stop: Stop proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    const-string v0, "  enable [group...]: Enable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    const-string v0, "  disable [group...]: Disable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist writeProtoLogToFileLocked()V
    .locals 7

    .line 365
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 366
    .local v0, "offset":J
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 367
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10600000001L

    const-wide v5, 0x474f4c4f544f5250L

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 368
    const-wide v3, 0x10900000002L

    const-string v5, "1.0.0"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 369
    const-wide v3, 0x10600000003L

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 370
    iget-object v3, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "offset":J
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProtoLog"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getStatus()Ljava/lang/String;
    .locals 5

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoLog status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

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

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    .line 352
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 354
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, " "

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n  Logcat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 358
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLogging definitions loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 359
    invoke-virtual {v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->knownViewerStringsNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    return-object v0
.end method

.method public blacklist isProtoEnabled()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLockFree:Z

    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageHash"    # I
    .param p4, "paramsMask"    # I
    .param p5, "messageString"    # Ljava/lang/String;
    .param p6, "args"    # [Ljava/lang/Object;

    .line 96
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p3, p4, p6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logToProto(II[Ljava/lang/Object;)V

    .line 99
    :cond_0
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_1
    return-void
.end method

.method public blacklist onShellCommand(Landroid/os/ShellCommand;)I
    .locals 9
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 310
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 311
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "cmd":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 313
    invoke-direct {p0, v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 315
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "arg":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 321
    .local v3, "groups":[Ljava/lang/String;
    const/4 v5, -0x1

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

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "start"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v8

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "stop"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v7

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "status"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_4
    const-string v6, "disable-text"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_5
    const-string v6, "enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_6
    const-string v6, "enable-text"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x4

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 341
    invoke-direct {p0, v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v5

    return v5

    .line 339
    :pswitch_0
    invoke-virtual {p0, v7, v8, v0, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v5

    return v5

    .line 337
    :pswitch_1
    invoke-virtual {p0, v8, v8, v0, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v5

    return v5

    .line 334
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    iget-object v6, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfigFilename:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v7, v7, v0, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v5

    return v5

    .line 332
    :pswitch_3
    invoke-virtual {p0, v8, v7, v0, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v5

    return v5

    .line 329
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 330
    return v8

    .line 326
    :pswitch_5
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/protolog/BaseProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 327
    return v8

    .line 323
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 324
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

.method public blacklist passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;
    .param p3, "message"    # Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$BaseProtoLogImpl$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    goto :goto_0

    .line 143
    :pswitch_2
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_0

    .line 140
    :pswitch_3
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_0

    .line 137
    :pswitch_4
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_0

    .line 134
    :pswitch_5
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    nop

    .line 152
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

.method protected varargs blacklist setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I
    .locals 5
    .param p1, "setTextLogging"    # Z
    .param p2, "value"    # Z
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "groups"    # [Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_2

    .line 277
    aget-object v1, p4, v0

    .line 278
    .local v1, "group":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 279
    .local v2, "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    if-eqz v2, :cond_1

    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-interface {v2, p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    goto :goto_1

    .line 283
    :cond_0
    invoke-interface {v2, p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToProto(Z)V

    .line 276
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .restart local v1    # "group":Ljava/lang/String;
    .restart local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
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

    invoke-static {p3, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 287
    const/4 v3, -0x1

    return v3

    .line 290
    .end local v0    # "i":I
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_2
    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startProtoLog(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabled:Z

    .line 237
    iput-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLockFree:Z

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist stopProtoLog(Ljava/io/PrintWriter;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "writeToFile"    # Z

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Waiting for log to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabled:Z

    .line 255
    if-eqz p2, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->writeProtoLogToFileLocked()V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 259
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mProtoLogEnabled:Z

    if-nez v1, :cond_2

    .line 263
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 265
    return-void

    .line 260
    :cond_2
    :try_start_1
    const-string v1, "ERROR: logging was re-enabled while waiting for flush."

    invoke-static {p1, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "logging enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/protolog/BaseProtoLogImpl;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "writeToFile":Z
    throw v1

    .line 263
    .restart local p0    # "this":Lcom/android/internal/protolog/BaseProtoLogImpl;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "writeToFile":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
