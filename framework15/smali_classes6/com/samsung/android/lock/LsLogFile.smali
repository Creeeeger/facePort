.class public final Lcom/samsung/android/lock/LsLogFile;
.super Ljava/lang/Object;
.source "LsLogFile.java"


# static fields
.field private static final blacklist BODY_OFFSET:J = 0x11L

.field private static final blacklist DEBUG:Z

.field private static final blacklist EOL:B = 0xat

.field private static final blacklist EOL_SIZE:I = 0x1

.field private static final blacklist F_LOCK:Ljava/util/concurrent/locks/Lock;

.field private static final blacklist HEADER_LENGTH:J = 0x11L

.field private static final blacklist HEADER_OFFSET:J = 0x0L

.field private static final blacklist LOG_DIR:Ljava/lang/String; = "/data/log/"

.field private static final blacklist LOG_EXT:Ljava/lang/String; = ".log"

.field private static final blacklist LOG_PREFIX:Ljava/lang/String; = "LockSettingsLog"

.field private static final blacklist LONG_SIZE:I = 0x8

.field private static final blacklist LSS_DIR:Ljava/lang/String; = "locksettings/"

.field private static final blacklist MAX_DEFALUT_LOG_SIZE:J = 0x19000L

.field private static final blacklist MAX_DUMP_LINE:J = 0xbb8L

.field private static final blacklist TAG:Ljava/lang/String; = "LsLogFile"

.field private static blacklist mLogPath:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetZipFile()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->getZipFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smshowStringLog(Lcom/samsung/android/lock/LsLogType;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->showStringLog(Lcom/samsung/android/lock/LsLogType;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/lock/LsLogFile;->DEBUG:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/lock/LsLogFile;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/lock/LsLogFile;->mLogPath:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist check(Ljava/io/RandomAccessFile;Lcom/samsung/android/lock/LsLogType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x11

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/lock/LsLogFile;->getMaxSize(Lcom/samsung/android/lock/LsLogType;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/lock/LsLogFile;->getMaxSize(Lcom/samsung/android/lock/LsLogType;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    nop

    const-string v0, "LsLogFile"

    const-string v1, "File Check : Passed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Old version"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "File corrupted"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "File size exceeded"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Broken file header"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Start Logging"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unexpected error"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist checkAndReset(Ljava/io/RandomAccessFile;Lcom/samsung/android/lock/LsLogType;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/lock/LsLogFile;->check(Ljava/io/RandomAccessFile;Lcom/samsung/android/lock/LsLogType;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsUtil;->makeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LsLogFile"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    const-wide/16 v1, 0x11

    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Lcom/samsung/android/lock/LsLogType;->containsProperty(I)Z

    move-result v3

    const-wide/16 v4, 0x0

    const/16 v6, 0xa

    const-wide/16 v7, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {p0, v7, v8}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->write(I)V

    return-void

    :cond_0
    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Lcom/samsung/android/lock/LsLogType;->containsProperty(I)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v0

    int-to-long v9, v3

    const-wide/16 v11, 0x11

    add-long/2addr v9, v11

    add-long/2addr v9, v7

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v9, v10}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {p0, v7, v8}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->write(I)V

    :cond_1
    return-void
.end method

.method public static blacklist dump(Ljava/io/PrintWriter;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/lock/LsLogFile;->DEBUG:Z

    const-string v1, "LsLogFile"

    if-eqz v0, :cond_0

    const-string v0, "dump start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/lock/LsLogType;->containsProperty(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Lcom/samsung/android/lock/LsLogFile;->dumpStringLog(Ljava/io/PrintWriter;Lcom/samsung/android/lock/LsLogType;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/samsung/android/lock/LsLogFile;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "dump end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private static blacklist dumpLegacy(Ljava/io/PrintWriter;)V
    .locals 15

    sget-boolean v0, Lcom/samsung/android/lock/LsLogFile;->DEBUG:Z

    const-string v1, "LsLogFile"

    if-eqz v0, :cond_0

    const-string v0, "dumpLegacy start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    sget-object v3, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/lock/LsLogType;->containsProperty(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v3, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/samsung/android/lock/LsLogFile;->getLegacyFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n----------------- Start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state -----------------"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/lock/LsLogFile;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v10, v4, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_3
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    if-eqz v11, :cond_4

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    add-int/lit8 v7, v7, 0x1

    int-to-long v11, v7

    const-wide/16 v13, 0xbb8

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    const-string v11, "<MAX Line reached>"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v11

    nop

    :cond_4
    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v9, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v12

    :try_start_4
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v11
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v11, "<Unknown Error>"

    move-object v9, v11

    goto :goto_2

    :catch_1
    move-exception v10

    const-string v11, "<IO Error>"

    move-object v9, v11

    goto :goto_2

    :catch_2
    move-exception v10

    const-string v11, "<File not found>"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v9, v11

    nop

    :goto_2
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "----------------- End "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :goto_4
    if-eqz v9, :cond_6

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    throw v1

    :cond_7
    if-nez v0, :cond_8

    const-string v2, "----------------- No legacy log -----------------"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    sget-boolean v2, Lcom/samsung/android/lock/LsLogFile;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "dumpLegacy end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static blacklist dumpStringLog(Ljava/io/PrintWriter;Lcom/samsung/android/lock/LsLogType;)V
    .locals 10

    invoke-static {p1}, Lcom/samsung/android/lock/LsLogFile;->getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n----------------- Start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state -----------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileLock()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LsLogFile"

    const-string v3, "dumpStringLog filelock failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v6, 0x11

    :try_start_1
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    int-to-long v6, v2

    const-wide/16 v8, 0xbb8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const-string v6, "<MAX Line reached>"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v6

    nop

    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "<Unknown Error>"

    move-object v4, v6

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "<IO Error>"

    move-object v4, v6

    goto :goto_1

    :catch_2
    move-exception v5

    const-string v6, "<File not found>"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v4, v6

    nop

    :goto_1
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----------------- End "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    throw v3
.end method

.method private static blacklist fileLock()Z
    .locals 6

    const-string v0, "LsLogFile"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/lock/LsLogFile;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/lock/LsLogFile;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Try lock failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "Try lock failed. exception!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v1
.end method

.method private static blacklist fileUnlock()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogFile;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getFileName(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockSettingsLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->getLogPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getFileName(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getLegacyFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getFileName(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLog(Lcom/samsung/android/lock/LsLogType;I)[Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v4, p1, [Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/lock/LsLogFile;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v6, 0x11

    :try_start_1
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    const-string v6, "<MAX Line reached>"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    nop

    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_2

    if-ge v2, p1, :cond_2

    aput-object v3, v4, v2

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v5

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "<Unknown Error>"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v3, v6

    if-ge v2, p1, :cond_2

    aput-object v3, v4, v2

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_6
    const-string v6, "<IO Error>"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v3, v6

    if-ge v2, p1, :cond_2

    aput-object v3, v4, v2

    goto :goto_1

    :catch_2
    move-exception v5

    :try_start_7
    const-string v6, "<File not found>"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v3, v6

    if-ge v2, p1, :cond_2

    aput-object v3, v4, v2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    nop

    return-object v4

    :goto_2
    if-eqz v3, :cond_3

    if-ge v2, p1, :cond_3

    aput-object v3, v4, v2

    :cond_3
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    throw v5
.end method

.method public static blacklist getLogPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogFile;->mLogPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/lock/LsLogFile;->mLogPath:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->prepareDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getMaxSize(Lcom/samsung/android/lock/LsLogType;)J
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogType;->getMaxSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v2, 0x19000

    return-wide v2
.end method

.method private static blacklist getZipFile()Ljava/lang/String;
    .locals 12

    const-string v0, "/data/log/LockSettingsLog.zip"

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileLock()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "LsLogFile"

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete file ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] for upload"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x800

    new-array v6, v6, [B

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    new-instance v7, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v7, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v7

    const/4 v7, 0x0

    :goto_0
    sget-object v8, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    array-length v8, v8

    if-ge v7, v8, :cond_4

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v9, v9, v7

    invoke-static {v9}, Lcom/samsung/android/lock/LsLogFile;->getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/util/zip/ZipEntry;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".log"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/4 v9, 0x0

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    invoke-virtual {v2, v6, v11, v10}, Ljava/io/FileInputStream;->read([BII)I

    :goto_1
    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v9, v10

    if-lez v10, :cond_2

    invoke-virtual {v5, v6, v11, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v7

    goto :goto_6

    :catchall_0
    move-exception v3

    goto :goto_7

    :catch_3
    move-exception v7

    const/4 v0, 0x0

    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zipLogFile - error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v7

    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v7

    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    :goto_6
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    sget-boolean v7, Lcom/samsung/android/lock/LsLogFile;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "zipLogFile - finish"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v0

    :goto_7
    if-eqz v2, :cond_a

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v7

    :cond_a
    :goto_8
    if-eqz v5, :cond_b

    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception v7

    :cond_b
    :goto_9
    if-eqz v4, :cond_c

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    :catch_8
    move-exception v7

    :cond_c
    :goto_a
    throw v3
.end method

.method public static blacklist migrate(I)V
    .locals 2

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    const-string v0, "LsLogFile"

    const-string v1, "migrateLsLog skipped!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/samsung/android/lock/LsLogFile;->migrateOldLogs(Lcom/samsung/android/lock/LsLogType;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist migrateOldLogs(Lcom/samsung/android/lock/LsLogType;)Z
    .locals 15

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->KEYERR:Lcom/samsung/android/lock/LsLogType;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getLegacyFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "LsLogFile"

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateOldLogs(), No log : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileLock()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateOldLogs(), file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x800

    new-array v5, v5, [B

    const-wide/16 v6, 0x11

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v10, v13

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v11, v13

    const/16 v13, 0x11

    invoke-virtual {v11, v5, v1, v13}, Ljava/io/FileOutputStream;->write([BII)V

    :goto_0
    invoke-virtual {v10, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    move v2, v13

    if-lez v13, :cond_3

    invoke-virtual {v11, v5, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v13, v2

    add-long/2addr v6, v13

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "rwd"

    invoke-direct {v1, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v12, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const-wide/16 v13, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v1, 0xa

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v8, v13

    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "migrate() - error"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_4

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    :cond_5
    :goto_4
    if-eqz v12, :cond_6

    :try_start_7
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "migrate success! [FP : %d, FS : %d]"

    invoke-static {v1, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/lock/LsLogFile;->setPermission(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    const/4 v1, 0x1

    return v1

    :goto_6
    if-eqz v10, :cond_7

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v3

    :cond_7
    :goto_7
    if-eqz v11, :cond_8

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception v3

    :cond_8
    :goto_8
    if-eqz v12, :cond_9

    :try_start_a
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    move-exception v3

    :cond_9
    :goto_9
    throw v1
.end method

.method public static blacklist prepare()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->prepareDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogFile;->prepareFiles(Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare lsslog file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LsLogFile"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist prepareDir()Ljava/lang/String;
    .locals 3

    const-string v0, "/data/log/locksettings/"

    sput-object v0, Lcom/samsung/android/lock/LsLogFile;->mLogPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/lock/LsLogFile;->mLogPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/lock/LsLogFile;->setPermission(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare dir : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lock/LsLogFile;->mLogPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LsLogFile"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/data/log/"

    sput-object v1, Lcom/samsung/android/lock/LsLogFile;->mLogPath:Ljava/lang/String;

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/lock/LsLogFile;->mLogPath:Ljava/lang/String;

    return-object v1
.end method

.method private static blacklist prepareFiles(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogFile;->getFileName(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogFile;->migrateOldLogs(Lcom/samsung/android/lock/LsLogType;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileLock()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/samsung/android/lock/LsLogFile;->checkAndReset(Ljava/io/RandomAccessFile;Lcom/samsung/android/lock/LsLogType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create logs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LsLogFile"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogFile;->setPermission(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blacklist reset(Lcom/samsung/android/lock/LsLogType;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LsLogFile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileLock()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "reset() filelock failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rws"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v3, 0x11

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save logs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    return-void
.end method

.method public static blacklist saveFile(Lcom/samsung/android/lock/LsLogType;Ljava/util/Queue;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/lock/LsLogType;",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... [Queue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LsLogFile"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileLock()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rws"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1, p0}, Lcom/samsung/android/lock/LsLogFile;->checkAndReset(Ljava/io/RandomAccessFile;Lcom/samsung/android/lock/LsLogType;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v9, v8

    int-to-long v9, v9

    add-long/2addr v9, v5

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getMaxSize(Lcom/samsung/android/lock/LsLogType;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    const-wide/16 v9, 0x11

    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_2
    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    move-wide v5, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Saving success! [FP : %d, FS : %d]"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save logs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist setPermission(Ljava/lang/String;)V
    .locals 3

    nop

    const/16 v0, 0x1ff

    const/16 v1, 0x3e8

    const/16 v2, 0x3ef

    invoke-static {p0, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set permission : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LsLogFile"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist show()V
    .locals 1

    new-instance v0, Lcom/samsung/android/lock/LsLogFile$1;

    invoke-direct {v0}, Lcom/samsung/android/lock/LsLogFile$1;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/lock/LsLogFile$1;->start()V

    return-void
.end method

.method private static blacklist showLegacy()V
    .locals 15

    sget-boolean v0, Lcom/samsung/android/lock/LsLogFile;->DEBUG:Z

    const-string v1, "LsLogFile"

    if-eqz v0, :cond_0

    const-string v0, "showLegacy start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    sget-object v3, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/lock/LsLogType;->containsProperty(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v3, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/samsung/android/lock/LsLogFile;->getLegacyFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@----------------- Start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state -----------------"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/samsung/android/lock/LsLogFile;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v10, v4, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_3
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    add-int/lit8 v7, v7, 0x1

    int-to-long v11, v7

    const-wide/16 v13, 0xbb8

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    const-string v11, "!@<MAX Line reached>"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v11

    nop

    :cond_4
    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v9, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v12

    :try_start_4
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v11
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v8

    goto :goto_4

    :catch_0
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v11, "!@<Unknown Error>"

    move-object v9, v11

    goto :goto_2

    :catch_1
    move-exception v10

    const-string v11, "!@<IO Error>"

    move-object v9, v11

    goto :goto_2

    :catch_2
    move-exception v10

    const-string v11, "!@<File not found>"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v9, v11

    nop

    :goto_2
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!@----------------- End "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :goto_4
    if-eqz v9, :cond_6

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    throw v8

    :cond_7
    if-nez v0, :cond_8

    const-string v2, "!@----------------- No legacy log -----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v2, Lcom/samsung/android/lock/LsLogFile;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "showLegacy end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static blacklist showStringLog(Lcom/samsung/android/lock/LsLogType;)V
    .locals 11

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->getFilePath(Lcom/samsung/android/lock/LsLogType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@----------------- Start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state -----------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LsLogFile"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/lock/LsLogFile;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v6, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v7, 0x11

    :try_start_1
    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    add-int/lit8 v2, v2, 0x1

    int-to-long v7, v2

    const-wide/16 v9, 0xbb8

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    const-string v7, "!@<MAX Line reached>"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v7

    nop

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v8

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v7
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "!@<Unknown Error>"

    move-object v5, v7

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v7, "!@<IO Error>"

    move-object v5, v7

    goto :goto_1

    :catch_2
    move-exception v6

    const-string v7, "!@<File not found>"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v5, v7

    nop

    :goto_1
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@----------------- End "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_2
    if-eqz v5, :cond_3

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->fileUnlock()Z

    throw v3
.end method

.method public static blacklist upload(Lcom/samsung/android/lock/LsLogType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request upload for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LsLogFile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/lock/LsLogFile$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/lock/LsLogFile$2;-><init>(Lcom/samsung/android/lock/LsLogType;)V

    invoke-virtual {v0}, Lcom/samsung/android/lock/LsLogFile$2;->start()V

    return-void
.end method
