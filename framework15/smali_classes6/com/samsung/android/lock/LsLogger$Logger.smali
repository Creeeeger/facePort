.class Lcom/samsung/android/lock/LsLogger$Logger;
.super Ljava/lang/Thread;
.source "LsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lock/LsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Logger"
.end annotation


# static fields
.field private static final blacklist mQueueLock:Ljava/lang/Object;


# instance fields
.field private blacklist mLogQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLogType:Lcom/samsung/android/lock/LsLogType;

.field private blacklist mSavQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$madd(Lcom/samsung/android/lock/LsLogger$Logger;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lock/LsLogger$Logger;->add(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/lock/LsLogger$Logger;->mQueueLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/lock/LsLogType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogQ:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogType:Lcom/samsung/android/lock/LsLogType;

    iput-object p1, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogType:Lcom/samsung/android/lock/LsLogType;

    return-void
.end method

.method private blacklist add(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/lock/LsLogger$Logger;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-direct {p0, v1}, Lcom/samsung/android/lock/LsLogger$Logger;->preventBOFLocked(Ljava/util/Queue;)V

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist preventBOFLocked(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const-string v0, "LsLogger"

    const-string v1, "Log buffer reached the limit! Clearing the buffer..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    const-string v0, "Unfortunately buffer cleared to prevent overflow!"

    invoke-static {v0}, Lcom/samsung/android/lock/LsUtil;->makeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    nop

    :goto_0
    const-string v0, "LsLogger"

    const-string v1, "Accumulating..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    sget-object v0, Lcom/samsung/android/lock/LsLogger$Logger;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogQ:Ljava/util/Queue;

    iput-object v1, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mSavQ:Ljava/util/Queue;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogQ:Ljava/util/Queue;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v0, "LsLogger"

    const-string v1, "Saving..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogType:Lcom/samsung/android/lock/LsLogType;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mSavQ:Ljava/util/Queue;

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsLogFile;->saveFile(Lcom/samsung/android/lock/LsLogType;Ljava/util/Queue;)Z

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mSavQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mSavQ:Ljava/util/Queue;

    sget-object v1, Lcom/samsung/android/lock/LsLogger$Logger;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "LsLogger"

    const-string v2, "Back to accumulate!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/samsung/android/lock/LsLogger;->-$$Nest$sfgetmLoggers()Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogType:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v1, v0}, Lcom/samsung/android/lock/LsLogger;->-$$Nest$smsetLogger(Lcom/samsung/android/lock/LsLogType;Lcom/samsung/android/lock/LsLogger$Logger;)Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogger$Logger;->mLogType:Lcom/samsung/android/lock/LsLogType;

    sget-object v1, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->show()V

    :cond_1
    const-string v0, "LsLogger"

    const-string v1, "Save Finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "LsLogger"

    const-string v2, "Logger interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
