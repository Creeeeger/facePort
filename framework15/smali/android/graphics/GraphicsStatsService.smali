.class public Landroid/graphics/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/GraphicsStatsService$ActiveBuffer;,
        Landroid/graphics/GraphicsStatsService$BufferInfo;,
        Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;,
        Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
    }
.end annotation


# static fields
.field private static final blacklist AID_STATSD:I = 0x42a

.field private static final blacklist DELETE_OLD:I = 0x2

.field public static final blacklist GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final blacklist SAVE_BUFFER:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private blacklist mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private final blacklist mAshmemSize:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFileAccessLock:Ljava/lang/Object;

.field private final blacklist mGraphicsRendererPolicy:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

.field private blacklist mGraphicsStatsDir:Ljava/io/File;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRotateIsScheduled:Z

.field private blacklist mWriteOutHandler:Landroid/os/Handler;

.field private final blacklist mZeroData:[B


# direct methods
.method public static synthetic blacklist $r8$lambda$WvL1__hjHUUBxHKYqhwbTcKuuCk(Landroid/graphics/GraphicsStatsService;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->onAlarm()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I
    .locals 0

    iget p0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZeroData(Landroid/graphics/GraphicsStatsService;)[B
    .locals 0

    iget-object p0, p0, Landroid/graphics/GraphicsStatsService;->mZeroData:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeleteOldBuffers(Landroid/graphics/GraphicsStatsService;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->deleteOldBuffers()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessDied(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->processDied(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveBuffer(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->saveBuffer(Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    invoke-static {}, Landroid/graphics/GraphicsStatsService;->nGetAshmemSize()I

    move-result v0

    iput v0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    iget v0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mZeroData:[B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "graphicsstats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GraphicsStats-disk"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-direct {v2, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsRendererPolicy:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroid/graphics/GraphicsStatsService$1;

    invoke-direct {v4, p0}, Landroid/graphics/GraphicsStatsService$1;-><init>(Landroid/graphics/GraphicsStatsService;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->nativeInit()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Graphics stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist addToSaveQueue(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, p0, p1}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy graphicsstats from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v2, v2, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GraphicsStatsService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    return-void
.end method

.method private blacklist deleteOldBuffers()V
    .locals 11

    const-string v0, "deleting old graphicsstats buffers"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v4, v3

    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    goto :goto_3

    :cond_0
    array-length v4, v3

    new-array v4, v4, [J

    const/4 v6, 0x0

    :goto_0
    array-length v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v7, :cond_1

    :try_start_1
    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v4, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    array-length v6, v4

    if-gt v6, v5, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    const/4 v6, 0x0

    :goto_2
    array-length v7, v4

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_3

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    aget-wide v9, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/graphics/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_4
    :goto_3
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private blacklist deleteRecursiveLocked(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Landroid/graphics/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphicsStatsService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private blacklist dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/GraphicsStatsService$HistoricalBuffer;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Landroid/graphics/GraphicsStatsService;->pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v9, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v10, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v12, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v14, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-object/from16 v16, v6

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v16}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p0

    move-object/from16 v2, p3

    return-object v0
.end method

.method private blacklist dumpHistoricalLocked(JLjava/util/HashSet;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "total"

    invoke-direct {v14, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v15, p3

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    goto :goto_3

    :cond_0
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v3}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_2

    :cond_1
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_1

    :cond_2
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_0

    :cond_3
    move-wide/from16 v0, p1

    move-object/from16 v15, p3

    return-void
.end method

.method private blacklist fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_3

    iget-object v1, v9, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    iget v2, v1, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    move/from16 v13, p3

    if-ne v2, v13, :cond_1

    iget v2, v1, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mUid:I

    move/from16 v14, p2

    if-ne v2, v14, :cond_2

    iget-object v2, v1, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v2, v2, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    cmp-long v2, v2, v11

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->binderDied()V

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    move/from16 v14, p2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move/from16 v14, p2

    move/from16 v13, p3

    :goto_1
    :try_start_0
    new-instance v0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V

    iget-object v1, v9, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to allocate space"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist nAddToDump(JLjava/lang/String;)V
.end method

.method private static native blacklist nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private static native blacklist nCreateDump(IZ)J
.end method

.method private static native blacklist nFinishDump(J)V
.end method

.method private static native blacklist nFinishDumpInMemory(JJZ)V
.end method

.method private static native blacklist nGetAshmemSize()I
.end method

.method private static native blacklist nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private static native blacklist nativeDestructor()V
.end method

.method private native blacklist nativeInit()V
.end method

.method private blacklist normalizeDate(J)Ljava/util/Calendar;
    .locals 3

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private blacklist onAlarm()V
    .locals 9

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->scheduleRotateLocked()V

    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-array v3, v1, [Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, v2

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, v2, v1

    :try_start_1
    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v4}, Landroid/view/IGraphicsStatsCallback;->onRotateGraphicsStatsBuffer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "GraphicsStatsService"

    const-string v6, "Failed to notify \'%s\' (pid=%d) to rotate buffers"

    iget-object v7, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v7, v7, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget v8, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .locals 4

    iget-wide v0, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-wide v2, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d/%s/%d/total"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist processDied(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->addToSaveQueue(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist pullGraphicsStats(ZJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x42a

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v4, "GraphicsStatsService"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    new-instance v3, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/GraphicsStatsService;->pullGraphicsStatsImpl(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private blacklist pullGraphicsStatsImpl(ZJ)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    sub-long/2addr v5, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    :goto_0
    iget-object v7, v1, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    iget-object v0, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-ge v9, v0, :cond_2

    :try_start_1
    iget-object v0, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    move-object v10, v0

    iget-object v0, v10, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v11, v0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v11, v5

    if-nez v0, :cond_1

    :try_start_2
    new-instance v0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, v1, v10}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v17, v5

    goto/16 :goto_9

    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/4 v0, -0x1

    const/4 v7, 0x1

    invoke-static {v0, v7}, Landroid/graphics/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v9

    :try_start_4
    iget-object v7, v1, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-direct {v1, v9, v10, v8}, Landroid/graphics/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const-string v11, "%d"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v12, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_5

    aget-object v16, v13, v15

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v17, v5

    :try_start_6
    array-length v5, v1

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_4

    aget-object v19, v1, v6

    move-object/from16 v20, v19

    move-object/from16 v19, v1

    new-instance v1, Ljava/io/File;

    move/from16 v21, v5

    const-string/jumbo v5, "total"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v22, v8

    move-object/from16 v8, v20

    :try_start_7
    invoke-direct {v1, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v19

    move/from16 v5, v21

    move-object/from16 v8, v22

    goto :goto_4

    :cond_4
    move-object/from16 v22, v8

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v22, v8

    goto :goto_7

    :cond_5
    move-wide/from16 v17, v5

    move-object/from16 v22, v8

    goto :goto_6

    :cond_6
    move-wide/from16 v17, v5

    move-object/from16 v22, v8

    :goto_6
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {v9, v10, v3, v4, v2}, Landroid/graphics/GraphicsStatsService;->nFinishDumpInMemory(JJZ)V

    nop

    return-void

    :catchall_2
    move-exception v0

    move-wide/from16 v17, v5

    move-object/from16 v22, v8

    :goto_7
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-wide/from16 v17, v5

    move-object/from16 v22, v8

    :goto_8
    invoke-static {v9, v10, v3, v4, v2}, Landroid/graphics/GraphicsStatsService;->nFinishDumpInMemory(JJZ)V

    throw v0

    :catchall_6
    move-exception v0

    move-wide/from16 v17, v5

    :goto_9
    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_9
.end method

.method private blacklist requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Landroid/graphics/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->scheduleRotateLocked()V

    invoke-virtual {v0}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private blacklist saveBuffer(Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V
    .locals 14

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saving graphicsstats for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    invoke-direct {p0, v3}, Landroid/graphics/GraphicsStatsService;->pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "GraphicsStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create path: \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v6, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v7, v7, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    iget-object v9, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v9, v9, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    iget-object v11, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v11, v11, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    iget-object v13, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    invoke-static/range {v5 .. v13}, Landroid/graphics/GraphicsStatsService;->nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private blacklist scheduleRotateLocked()V
    .locals 10

    iget-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    new-instance v8, Landroid/graphics/GraphicsStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Landroid/graphics/GraphicsStatsService$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/GraphicsStatsService;)V

    iget-object v9, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const-string v7, "GraphicsStatsService"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v1, "GraphicsStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ge v3, v4, :cond_3

    :try_start_1
    new-instance v4, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    iget-object v5, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v4, p0, v5}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v3

    :try_start_3
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0, v3, v4, v2}, Landroid/graphics/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v3, v4, v5}, Landroid/graphics/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v4}, Landroid/graphics/GraphicsStatsService;->nFinishDump(J)V

    nop

    return-void

    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v3, v4}, Landroid/graphics/GraphicsStatsService;->nFinishDump(J)V

    throw v1

    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Landroid/graphics/GraphicsStatsService;->nativeDestructor()V

    return-void
.end method

.method public blacklist requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_0
    iget-object v0, v8, Landroid/graphics/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v10, v9}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    iget-object v0, v8, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v15, v0

    iget-object v6, v8, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    nop

    :try_start_1
    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    move-wide/from16 v6, v16

    :try_start_2
    invoke-direct/range {v1 .. v7}, Landroid/graphics/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v12, v0

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v12

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v6

    :goto_0
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find package: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public blacklist requestRenderEngineFor(Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestRenderEngineFor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphicsStatsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo v0, "packageName is null."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->VK:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    invoke-virtual {v0}, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->ordinal()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsRendererPolicy:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-virtual {v3, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->getRendererType(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Landroid/os/RemoteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find package: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
