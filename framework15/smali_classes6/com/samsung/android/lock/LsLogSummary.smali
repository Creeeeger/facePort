.class public Lcom/samsung/android/lock/LsLogSummary;
.super Ljava/lang/Object;
.source "LsLogSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lock/LsLogSummary$Cache;
    }
.end annotation


# static fields
.field private static final blacklist BODY_OFFSET:J = 0x11L

.field private static final blacklist DEBUG:Z

.field public static final blacklist ENROLL_TYPE:B = 0x1t

.field private static final blacklist EOL:B = 0xat

.field private static final blacklist EOL_SIZE:I = 0x1

.field private static final blacklist HEADER_LENGTH:J = 0x11L

.field private static final blacklist HEADER_OFFSET:J = 0x0L

.field private static final blacklist LONG_SIZE:I = 0x8

.field private static final blacklist MAX_ENROLL_RESULT:I = 0xa

.field private static final blacklist MAX_VERIFY_FAILED:I = 0x3c

.field private static final blacklist MAX_VERIFY_SUCCESS:I = 0x1e

.field private static final blacklist SUMMARY_DIR:Ljava/lang/String; = "summary/"

.field private static final blacklist TAG:Ljava/lang/String; = "LsLogSummary"

.field public static final blacklist VERIFY_FAIL:B = 0x3t

.field public static final blacklist VERIFY_SUCC:B = 0x2t

.field private static final blacklist mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

.field private static blacklist mEnrollResults:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/lock/LsLogEnroll;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mFileList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mFileWriteLock:Ljava/lang/Object;

.field private static blacklist mLogPath:Ljava/lang/String;

.field private static blacklist mVerifyFailed:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/lock/LsLogVerify;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mVerifySuccess:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/lock/LsLogVerify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/lock/LsLogSummary;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/lock/LsLogSummary;->mLogPath:Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/samsung/android/lock/LsLogSummary;->mEnrollResults:Ljava/util/Queue;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/samsung/android/lock/LsLogSummary;->mVerifySuccess:Ljava/util/Queue;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/samsung/android/lock/LsLogSummary;->mVerifyFailed:Ljava/util/Queue;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/samsung/android/lock/LsLogSummary;->mFileList:Ljava/util/Queue;

    new-instance v1, Lcom/samsung/android/lock/LsLogSummary$Cache;

    invoke-direct {v1, v0}, Lcom/samsung/android/lock/LsLogSummary$Cache;-><init>(Lcom/samsung/android/lock/LsLogSummary$Cache-IA;)V

    sput-object v1, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/lock/LsLogSummary;->mFileWriteLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addEnrollResult(Lcom/samsung/android/lock/LsLogEnroll;Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/lock/LsLogSummary;->mEnrollResults:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mEnrollResults:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mEnrollResults:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lock/LsLogEnroll;

    iget-wide v2, v1, Lcom/samsung/android/lock/LsLogEnroll;->mReqTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogSummary;->getFileName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogSummary;->deleteFile(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mEnrollResults:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/lock/LsLogEnroll;->mReqTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogSummary;->getFileName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogEnroll;->toBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsLogSummary;->saveFile(Ljava/lang/String;[B)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist addVerifyFailed(Lcom/samsung/android/lock/LsLogVerify;Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/lock/LsLogSummary;->mVerifyFailed:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mVerifyFailed:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mVerifyFailed:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lock/LsLogVerify;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogSummary;->getFileName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogSummary;->deleteFile(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mVerifyFailed:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogSummary;->getFileName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogVerify;->toBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsLogSummary;->saveFile(Ljava/lang/String;[B)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist addVerifySuccess(Lcom/samsung/android/lock/LsLogVerify;Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/lock/LsLogSummary;->mVerifySuccess:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mVerifySuccess:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mVerifySuccess:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lock/LsLogVerify;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogSummary;->getFileName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/lock/LsLogSummary;->deleteFile(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mVerifySuccess:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogSummary;->getFileName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogVerify;->toBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsLogSummary;->saveFile(Ljava/lang/String;[B)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static blacklist deleteFile(Ljava/io/File;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/LsLogSummary;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    :cond_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/lock/LsLogSummary$Cache;->putFile(Ljava/io/File;[B)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist deleteFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->getRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogSummary;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method private static blacklist getFileName(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    const-string v0, "%016x.log"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRootDir()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/LsLogSummary;->mLogPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/lock/LsLogSummary;->mLogPath:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->getLogPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "summary/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lock/LsLogSummary;->mLogPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mLogPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/lock/LsLogFile;->setPermission(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare dir : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lock/LsLogSummary;->mLogPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LsLogSummary"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->getLogPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/lock/LsLogSummary;->mLogPath:Ljava/lang/String;

    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mLogPath:Ljava/lang/String;

    return-object v1
.end method

.method public static blacklist getSummaryString()Ljava/lang/String;
    .locals 6

    const-string v0, "LsLogSummary"

    :goto_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mFileList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mFileList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT Found file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/samsung/android/lock/LsLogSummary;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSummary file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/lock/LsLogSummary;->loadFile(Ljava/io/File;Z)[B

    move-result-object v3

    if-eqz v3, :cond_6

    array-length v4, v3

    const/4 v5, 0x4

    if-gt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    aget-byte v5, v3, v4

    if-ne v5, v2, :cond_3

    invoke-static {v3}, Lcom/samsung/android/lock/LsLogEnroll;->fromBytes([B)Lcom/samsung/android/lock/LsLogEnroll;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/lock/LsLogEnroll;->toSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    aget-byte v2, v3, v4

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    invoke-static {v3}, Lcom/samsung/android/lock/LsLogVerify;->fromBytes([B)Lcom/samsung/android/lock/LsLogVerify;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/lock/LsLogVerify;->toSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    aget-byte v2, v3, v4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    invoke-static {v3}, Lcom/samsung/android/lock/LsLogVerify;->fromBytes([B)Lcom/samsung/android/lock/LsLogVerify;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/lock/LsLogVerify;->toSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    goto :goto_0

    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSummaryString failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist loadFile(Ljava/io/File;Z)[B
    .locals 6

    sget-object v0, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    invoke-virtual {v1, p0}, Lcom/samsung/android/lock/LsLogSummary$Cache;->hasFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    invoke-virtual {v1, p0}, Lcom/samsung/android/lock/LsLogSummary$Cache;->peekFile(Ljava/io/File;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    invoke-static {v1}, Lcom/samsung/android/lock/LsLogSummary$Cache;->-$$Nest$mgetVersion(Lcom/samsung/android/lock/LsLogSummary$Cache;)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v0, "LsLogSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadfile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    move-object v0, v3

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "LsLogSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot road file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_1
    nop

    :goto_2
    if-eqz p1, :cond_1

    sget-object v2, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    invoke-virtual {v2, p0, v0, v1}, Lcom/samsung/android/lock/LsLogSummary$Cache;->putFileIfUnchanged(Ljava/io/File;[BI)V

    goto :goto_3

    :cond_1
    sget-object v2, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/lock/LsLogSummary$Cache;->putFile(Ljava/io/File;[B)V

    :goto_3
    return-object v0

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public static blacklist loadFile(Ljava/lang/String;Z)[B
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->getRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/samsung/android/lock/LsLogSummary;->loadFile(Ljava/io/File;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist loadLoglist()V
    .locals 12

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->getRootDir()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const-string v3, "LsLogSummary"

    if-nez v2, :cond_0

    const-string v4, "No enroll/verify list"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v2, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load log file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/lock/LsLogSummary;->loadFile(Ljava/io/File;Z)[B

    move-result-object v9

    if-eqz v9, :cond_5

    array-length v10, v9

    const/4 v11, 0x4

    if-gt v10, v11, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v10, v9, v5

    if-ne v10, v8, :cond_2

    invoke-static {v9}, Lcom/samsung/android/lock/LsLogEnroll;->fromBytes([B)Lcom/samsung/android/lock/LsLogEnroll;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/samsung/android/lock/LsLogSummary;->addEnrollResult(Lcom/samsung/android/lock/LsLogEnroll;Z)V

    goto :goto_2

    :cond_2
    aget-byte v8, v9, v5

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    invoke-static {v9}, Lcom/samsung/android/lock/LsLogVerify;->fromBytes([B)Lcom/samsung/android/lock/LsLogVerify;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/samsung/android/lock/LsLogSummary;->addVerifySuccess(Lcom/samsung/android/lock/LsLogVerify;Z)V

    goto :goto_2

    :cond_3
    aget-byte v8, v9, v5

    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    invoke-static {v9}, Lcom/samsung/android/lock/LsLogVerify;->fromBytes([B)Lcom/samsung/android/lock/LsLogVerify;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/samsung/android/lock/LsLogSummary;->addVerifyFailed(Lcom/samsung/android/lock/LsLogVerify;Z)V

    goto :goto_2

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data is UNKWON type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v10, v9, v5

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "skip file : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static blacklist prefetchData()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/lock/LsLogSummary$Cache;->isFetched(I)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    sget-object v3, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    invoke-virtual {v3, v4}, Lcom/samsung/android/lock/LsLogSummary$Cache;->setFetched(I)V

    sget-object v3, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    invoke-static {v3}, Lcom/samsung/android/lock/LsLogSummary$Cache;->-$$Nest$mgetVersion(Lcom/samsung/android/lock/LsLogSummary$Cache;)I

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->loadLoglist()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string v2, "LsLogSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prefetchData summary files : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static blacklist readySummary()[Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->getRootDir()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "LsLogSummary"

    const-string v4, "No enroll/verify list"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    sget-object v6, Lcom/samsung/android/lock/LsLogSummary;->mFileList:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/samsung/android/lock/LsLogFile;->getLog(Lcom/samsung/android/lock/LsLogType;I)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist saveFile(Ljava/io/File;[B)V
    .locals 7

    sget-object v0, Lcom/samsung/android/lock/LsLogSummary;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/lock/LsLogFile;->setPermission(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "LsLogSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    sget-object v3, Lcom/samsung/android/lock/LsLogSummary;->mCache:Lcom/samsung/android/lock/LsLogSummary$Cache;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/lock/LsLogSummary$Cache;->putFile(Ljava/io/File;[B)V

    monitor-exit v0

    return-void

    :goto_2
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/lock/LsLogFile;->setPermission(Ljava/lang/String;)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static blacklist saveFile(Ljava/lang/String;[B)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->getRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/samsung/android/lock/LsLogSummary;->saveFile(Ljava/io/File;[B)V

    return-void
.end method
