.class public final Lcom/android/systemui/dump/LogBufferEulogizer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final files:Lcom/android/systemui/util/io/Files;

.field public final logPath:Ljava/nio/file/Path;

.field public final maxLogAgeToDump:J

.field public final minWriteGap:J

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/io/Files;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "log_buffers.txt"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    sget-wide v6, Lcom/android/systemui/dump/LogBufferEulogizerKt;->MIN_WRITE_GAP:J

    sget-wide v8, Lcom/android/systemui/dump/LogBufferEulogizerKt;->MAX_AGE_TO_DUMP:J

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/dump/LogBufferEulogizer;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/io/Files;Ljava/nio/file/Path;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/io/Files;Ljava/nio/file/Path;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p2, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p3, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->files:Lcom/android/systemui/util/io/Files;

    iput-object p4, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->logPath:Ljava/nio/file/Path;

    iput-wide p5, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->minWriteGap:J

    iput-wide p7, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->maxLogAgeToDump:J

    return-void
.end method


# virtual methods
.method public final getMillisSinceLastWrite(Ljava/nio/file/Path;)J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->files:Lcom/android/systemui/util/io/Files;

    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/util/io/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide p0

    goto :goto_1

    :cond_0
    const-wide/16 p0, 0x0

    :goto_1
    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public final record(Ljava/lang/Throwable;)V
    .locals 13

    const-string v0, "ms"

    const-string v1, "Buffer eulogy took "

    iget-object v2, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "BufferEulogizer"

    const-string v6, "Performing emergency dump of log buffers"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->logPath:Ljava/nio/file/Path;

    invoke-virtual {p0, v6}, Lcom/android/systemui/dump/LogBufferEulogizer;->getMillisSinceLastWrite(Ljava/nio/file/Path;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->minWriteGap:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot dump logs, last write was only "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms ago"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->files:Lcom/android/systemui/util/io/Files;

    iget-object v9, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->logPath:Ljava/nio/file/Path;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/nio/file/OpenOption;

    sget-object v11, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sget-object v11, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/util/io/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sget-object v10, Lcom/android/systemui/dump/LogBufferEulogizerKt;->DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    const-string v10, "Dump triggered by exception:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Lcom/android/systemui/dump/DumpManager;->getLogBuffers()Ljava/util/Collection;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v9}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;)V

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long v6, p0, v3

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    :try_start_2
    invoke-static {v8, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v8, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    const-string p1, "Exception while attempting to dump buffers, bailing"

    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
