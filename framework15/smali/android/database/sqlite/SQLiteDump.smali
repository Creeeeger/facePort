.class public Landroid/database/sqlite/SQLiteDump;
.super Ljava/lang/Object;
.source "SQLiteDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDump$TeePrinter;
    }
.end annotation


# static fields
.field public static final blacklist DB_INFO_DUMP_DIR_NAME:Ljava/lang/String; = "sqlite_dump"

.field public static final blacklist DUMMY_DB_DUMP:Landroid/database/sqlite/SQLiteDump;

.field private static final blacklist TAG:Ljava/lang/String; = "SQLiteDump"


# instance fields
.field private blacklist isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mDbPath:Ljava/lang/String;

.field private blacklist mDumpDirPath:Ljava/lang/String;

.field private blacklist mDumpFile:Ljava/io/File;

.field private blacklist mDumpFilePrinter:Ljava/io/PrintStream;

.field private final blacklist mLineSeparator:Ljava/lang/String;

.field private final blacklist mMaxDumpFiles:I

.field private blacklist mOutPutStream:Ljava/io/BufferedOutputStream;

.field public blacklist mTeePrinter:Landroid/database/sqlite/SQLiteDump$TeePrinter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/database/sqlite/SQLiteDump;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDump;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDump;->DUMMY_DB_DUMP:Landroid/database/sqlite/SQLiteDump;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Landroid/database/sqlite/SQLiteDump;->mMaxDumpFiles:I

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mLineSeparator:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Landroid/database/sqlite/SQLiteDump;->mMaxDumpFiles:I

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mLineSeparator:Ljava/lang/String;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDump;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/database/sqlite/SQLiteGlobal;->enableSQLiteDump(Z)V

    :cond_0
    return-void
.end method

.method private blacklist createCorruptFile(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDump;->getDumpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist createDumpDir()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "sqlite_dump"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist deleteOldDumpFiles()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mDumpDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteDump$1;

    invoke-direct {v2, p0}, Landroid/database/sqlite/SQLiteDump$1;-><init>(Landroid/database/sqlite/SQLiteDump;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist getDbCreateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HH_mm_ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    :try_start_0
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getDumpFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDump;->getDbCreateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbcorrupt_dump_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFile:Ljava/io/File;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFile:Ljava/io/File;

    return-object v3
.end method

.method private blacklist getLogPrefix(Ljava/lang/StringBuilder;)V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private blacklist isReady()Z
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private blacklist reset()V
    .locals 4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDump;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mTeePrinter:Landroid/database/sqlite/SQLiteDump$TeePrinter;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    :cond_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDump;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mTeePrinter:Landroid/database/sqlite/SQLiteDump$TeePrinter;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    :cond_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    throw v2

    :catch_2
    move-exception v2

    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDump;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mTeePrinter:Landroid/database/sqlite/SQLiteDump$TeePrinter;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    :cond_6
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_2
    return-void
.end method


# virtual methods
.method public varargs blacklist addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDump;->isReady()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDump;->getLogPrefix(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    if-lez v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDump;->mLineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method public blacklist finishDump()V
    .locals 0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDump;->reset()V

    return-void
.end method

.method public blacklist getSQLiteDumpLogs(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/database/sqlite/SQLiteGlobal;->getSQLiteDumpLogs(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Exception;

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist prepareDumpFile()V
    .locals 10

    const-string v0, "SQLiteDump"

    const-string v1, " ====="

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDump;->createDumpDir()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDump;->mDumpDirPath:Ljava/lang/String;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDump;->mDumpDirPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDump;->createCorruptFile(Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    if-eqz v2, :cond_1

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/PrintStream;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDump;->mOutPutStream:Ljava/io/BufferedOutputStream;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v0}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/database/sqlite/SQLiteDump$TeePrinter;

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    invoke-direct {v6, v3, v7}, Landroid/database/sqlite/SQLiteDump$TeePrinter;-><init>(Landroid/util/Printer;Ljava/io/PrintStream;)V

    iput-object v6, p0, Landroid/database/sqlite/SQLiteDump;->mTeePrinter:Landroid/database/sqlite/SQLiteDump$TeePrinter;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===== corrupt db name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Landroid/database/sqlite/SQLiteDump;->mDbPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===== corrupt time:    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFilePrinter:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===== dump file name:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDump;->mDumpFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDump;->deleteOldDumpFiles()V

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDump;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "prepare dump file failed."

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDump;->reset()V

    :goto_0
    return-void
.end method
