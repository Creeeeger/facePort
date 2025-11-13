.class Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryHistoryDirectory"
.end annotation


# instance fields
.field private blacklist mCleanupNeeded:Z

.field private final blacklist mDirectory:Ljava/io/File;

.field private final blacklist mHistoryFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mMaxHistoryFiles:I

.field private final blacklist mMonotonicClock:Lcom/android/internal/os/MonotonicClock;


# direct methods
.method public static synthetic blacklist $r8$lambda$2R3ojLSCCa_mY4vye6O-KrTI--w(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->lambda$load$0(Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$x1pWXfGVhmnOGSbQUzkU5npCWFI(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->lambda$load$1(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanup(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->cleanup()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/File;Lcom/android/internal/os/MonotonicClock;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iput p3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mMaxHistoryFiles:I

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mMaxHistoryFiles:I

    if-nez v0, :cond_0

    const-string v0, "BatteryStatsHistory"

    const-string/jumbo v1, "mMaxHistoryFiles should not be zero when writing history"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist cleanup()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->tryLock()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mCleanupNeeded:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mCleanupNeeded:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsHistory;->-$$Nest$smhasFreeDiskSpace(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mMaxHistoryFiles:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method private synthetic blacklist lambda$load$0(Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    const-string v0, ".bh"

    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;-><init>(Ljava/io/File;JLcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile-IA;)V

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private synthetic blacklist lambda$load$1(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->lock()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    throw v0
.end method


# virtual methods
.method blacklist getFileCount()I
    .locals 3

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->tryLock(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    throw v1

    :cond_0
    const-string v1, "BatteryStatsHistory"

    const-string/jumbo v2, "getFileCount, Already locked by another thread."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist getFileNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->tryLock(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v4, v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :cond_0
    nop

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    throw v1

    :cond_1
    const-string v1, "BatteryStatsHistory"

    const-string/jumbo v2, "getFileNames, Already locked by another thread."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist getFirstFile()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;
    .locals 4

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->tryLock(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    return-object v1

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    throw v1

    :cond_1
    const-string v2, "BatteryStatsHistory"

    const-string/jumbo v3, "getFirstFile, Already locked by another thread."

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist getLastFile()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;
    .locals 4

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->tryLock(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    return-object v1

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    throw v1

    :cond_1
    const-string v2, "BatteryStatsHistory"

    const-string/jumbo v3, "getLastFile, Already locked by another thread."

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist getNextFile(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;JJ)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    move v3, v2

    :goto_0
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    if-eqz p1, :cond_0

    iget-wide v5, v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    iget-wide v7, p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    add-int/lit8 v0, v3, 0x1

    :cond_0
    iget-wide v5, v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    cmp-long v5, v5, p4

    if-lez v5, :cond_1

    add-int/lit8 v2, v3, -0x1

    :cond_1
    iget-wide v5, v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    cmp-long v5, v5, p2

    if-gtz v5, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v0, v1, :cond_4

    move v0, v1

    :cond_4
    if-gt v0, v2, :cond_5

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    return-object v3

    :cond_5
    const/4 v3, 0x0

    return-object v3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterating battery history without a lock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getSize()I
    .locals 5

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->tryLock(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    throw v1

    :cond_1
    const-string v1, "BatteryStatsHistory"

    const-string/jumbo v2, "getSize, Already locked by another thread."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist isLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method blacklist load()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryDir does not exist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsHistory"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method blacklist lock()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method blacklist makeBatteryHistoryFile()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;
    .locals 5

    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;-><init>(Ljava/io/File;JLcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile-IA;)V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    return-object v0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    throw v1
.end method

.method blacklist reset()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method blacklist setMaxHistoryFiles(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mMaxHistoryFiles:I

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->cleanup()V

    return-void
.end method

.method blacklist tryLock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method blacklist tryLock(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method blacklist unlock()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mCleanupNeeded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->cleanup()V

    :cond_0
    return-void
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->lock()V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "BatteryStatsHistory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBlob([B)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->unlock()V

    throw v0
.end method
