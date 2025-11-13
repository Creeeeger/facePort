.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$EditorImpl;,
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final blacklist CALLBACK_ON_CLEAR_CHANGE:J = 0x71a0c40L

.field private static final greylist-max-o CONTENT:Ljava/lang/Object;

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_FSYNC_DURATION_MILLIS:J = 0x100L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SharedPreferencesImpl"


# instance fields
.field private final greylist-max-o mBackupFile:Ljava/io/File;

.field private greylist-max-o mCurrentMemoryStateGeneration:J

.field private greylist-max-o mDiskStateGeneration:J

.field private greylist-max-o mDiskWritesInFlight:I

.field private final greylist mFile:Ljava/io/File;

.field private final greylist-max-o mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLoaded:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMode:I

.field private greylist-max-o mNumSync:I

.field private greylist-max-o mStatSize:J

.field private greylist-max-o mStatTimestamp:Landroid/system/StructTimespec;

.field private final greylist-max-o mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

.field private greylist-max-o mThrowable:Ljava/lang/Throwable;

.field private final greylist-max-o mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I
    .locals 0

    iget p0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritingToDiskLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;I)V
    .locals 0

    iput p1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMap(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadFromDisk(Landroid/app/SharedPreferencesImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDisk()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToFile(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    return-void
.end method

.method constructor greylist <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 100
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 109
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 122
    new-instance v1, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 124
    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 128
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 129
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 130
    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    .line 131
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 133
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    .line 134
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 135
    return-void
.end method

.method private greylist-max-o awaitLoadedLocked()V
    .locals 2

    .line 275
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 281
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_1

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    :goto_1
    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 290
    return-void

    .line 288
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static greylist-max-o createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 774
    goto :goto_0

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 761
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    const-string v4, "SharedPreferencesImpl"

    if-nez v3, :cond_0

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v3, 0x0

    return-object v3

    .line 765
    :cond_0
    nop

    .line 766
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1f9

    .line 765
    const/4 v6, -0x1

    invoke-static {v3, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 770
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 773
    goto :goto_0

    .line 771
    :catch_1
    move-exception v3

    .line 772
    .local v3, "e2":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    :goto_0
    return-object v0
.end method

.method private greylist-max-o enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    .line 722
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 724
    .local v2, "isFromSyncCommit":Z
    :goto_0
    new-instance v3, Landroid/app/SharedPreferencesImpl$2;

    invoke-direct {v3, p0, p1, v2, p2}, Landroid/app/SharedPreferencesImpl$2;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V

    .line 741
    .local v3, "writeToDiskRunnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_2

    .line 742
    const/4 v4, 0x0

    .line 743
    .local v4, "wasEmpty":Z
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 744
    :try_start_0
    iget v6, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v6, v1, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    move v4, v6

    .line 745
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    if-eqz v4, :cond_2

    .line 747
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 748
    return-void

    .line 745
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 752
    .end local v4    # "wasEmpty":Z
    :cond_2
    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v3, v0}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    .line 753
    return-void
.end method

.method private greylist-max-o hasFileChangedUnexpectedly()Z
    .locals 8

    .line 234
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 238
    monitor-exit v0

    return v2

    .line 240
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 249
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    .local v1, "stat":Landroid/system/StructStat;
    nop

    .line 254
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 255
    :try_start_2
    iget-object v4, v1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    invoke-virtual {v4, v5}, Landroid/system/StructTimespec;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    iget-wide v6, v1, Landroid/system/StructStat;->st_size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    :cond_1
    move v2, v0

    :cond_2
    monitor-exit v3

    return v2

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 250
    .end local v1    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Landroid/system/ErrnoException;
    return v0

    .line 240
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private greylist-max-o loadFromDisk()V
    .locals 8

    .line 150
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-eqz v1, :cond_0

    .line 152
    monitor-exit v0

    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 156
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 158
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 161
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    const-string v0, "SharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to read preferences file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    const/4 v0, 0x0

    .line 166
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 167
    .local v1, "stat":Landroid/system/StructStat;
    const/4 v2, 0x0

    .line 169
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    move-object v1, v3

    .line 170
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 171
    const/4 v3, 0x0

    .line 173
    .local v3, "str":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v4

    .line 175
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    .line 179
    :goto_0
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    goto :goto_2

    .line 179
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 176
    :catch_0
    move-exception v4

    .line 177
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 179
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 180
    nop

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "stat":Landroid/system/StructStat;
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local p0    # "this":Landroid/app/SharedPreferencesImpl;
    throw v4
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 185
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "stat":Landroid/system/StructStat;
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    .restart local p0    # "this":Landroid/app/SharedPreferencesImpl;
    :catchall_1
    move-exception v3

    .line 186
    .local v3, "t":Ljava/lang/Throwable;
    move-object v2, v3

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .line 182
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 187
    :cond_3
    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 189
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "stat":Landroid/system/StructStat;
    .local v3, "thrown":Ljava/lang/Throwable;
    :goto_3
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 191
    iput-object v3, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 197
    if-nez v3, :cond_5

    .line 198
    if-eqz v1, :cond_4

    .line 199
    :try_start_7
    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 200
    iget-object v0, v2, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 201
    iget-wide v5, v2, Landroid/system/StructStat;->st_size:J

    iput-wide v5, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    goto :goto_4

    .line 203
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 208
    :catchall_2
    move-exception v0

    .line 209
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_8
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 211
    .end local v0    # "t":Ljava/lang/Throwable;
    :try_start_9
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    goto :goto_5

    :catchall_3
    move-exception v0

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 212
    nop

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "stat":Landroid/system/StructStat;
    .end local v3    # "thrown":Ljava/lang/Throwable;
    .end local p0    # "this":Landroid/app/SharedPreferencesImpl;
    throw v0

    .line 211
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "stat":Landroid/system/StructStat;
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    .restart local p0    # "this":Landroid/app/SharedPreferencesImpl;
    :cond_5
    :goto_4
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 212
    nop

    .line 213
    monitor-exit v4

    .line 214
    return-void

    .line 213
    :catchall_4
    move-exception v0

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 158
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "stat":Landroid/system/StructStat;
    .end local v3    # "thrown":Ljava/lang/Throwable;
    :catchall_5
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1
.end method

.method static greylist-max-o makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    .line 217
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-r startLoadFromDisk()V
    .locals 2

    .line 139
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    new-instance v0, Landroid/app/SharedPreferencesImpl$1;

    const-string v1, "SharedPreferencesImpl-load"

    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Landroid/app/SharedPreferencesImpl$1;->start()V

    .line 147
    return-void

    .line 141
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .locals 29
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "isFromSyncCommit"    # Z

    .line 780
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    .line 781
    .local v3, "startTime":J
    const-wide/16 v5, 0x0

    .line 782
    .local v5, "existsTime":J
    const-wide/16 v7, 0x0

    .line 783
    .local v7, "backupExistsTime":J
    const-wide/16 v9, 0x0

    .line 784
    .local v9, "outputStreamCreateTime":J
    const-wide/16 v11, 0x0

    .line 785
    .local v11, "writeTime":J
    const-wide/16 v13, 0x0

    .line 786
    .local v13, "fsyncTime":J
    const-wide/16 v15, 0x0

    .line 787
    .local v15, "setPermTime":J
    const-wide/16 v17, 0x0

    .line 788
    .local v17, "fstatTime":J
    const-wide/16 v19, 0x0

    .line 794
    .local v19, "deleteTime":J
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v21

    .line 804
    .local v21, "fileExists":Z
    move-wide/from16 v22, v3

    .end local v3    # "startTime":J
    .local v22, "startTime":J
    if-eqz v21, :cond_5

    .line 805
    const/16 v24, 0x0

    .line 808
    .local v24, "needsWrite":Z
    iget-wide v3, v1, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    move-wide/from16 v25, v5

    .end local v5    # "existsTime":J
    .local v25, "existsTime":J
    iget-wide v5, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 809
    if-eqz p2, :cond_0

    .line 810
    const/16 v24, 0x1

    move-wide/from16 v27, v7

    goto :goto_1

    .line 812
    :cond_0
    iget-object v3, v1, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 815
    :try_start_0
    iget-wide v4, v1, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v27, v7

    .end local v7    # "backupExistsTime":J
    .local v27, "backupExistsTime":J
    :try_start_1
    iget-wide v6, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 816
    const/16 v24, 0x1

    .line 818
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v27    # "backupExistsTime":J
    .restart local v7    # "backupExistsTime":J
    :catchall_1
    move-exception v0

    move-wide/from16 v27, v7

    .end local v7    # "backupExistsTime":J
    .restart local v27    # "backupExistsTime":J
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 808
    .end local v27    # "backupExistsTime":J
    .restart local v7    # "backupExistsTime":J
    :cond_2
    move-wide/from16 v27, v7

    .line 822
    .end local v7    # "backupExistsTime":J
    .restart local v27    # "backupExistsTime":J
    :goto_1
    if-nez v24, :cond_3

    .line 823
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 824
    return-void

    .line 827
    :cond_3
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 833
    .local v0, "backupFileExists":Z
    if-nez v0, :cond_4

    .line 834
    iget-object v3, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 835
    const-string v3, "SharedPreferencesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t rename file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 838
    return-void

    .line 841
    :cond_4
    iget-object v3, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 804
    .end local v0    # "backupFileExists":Z
    .end local v24    # "needsWrite":Z
    .end local v25    # "existsTime":J
    .end local v27    # "backupExistsTime":J
    .restart local v5    # "existsTime":J
    .restart local v7    # "backupExistsTime":J
    :cond_5
    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    .line 849
    .end local v5    # "existsTime":J
    .end local v7    # "backupExistsTime":J
    .restart local v25    # "existsTime":J
    .restart local v27    # "backupExistsTime":J
    :cond_6
    :goto_2
    :try_start_2
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v3, v0

    .line 855
    .local v3, "str":Ljava/io/FileOutputStream;
    if-nez v3, :cond_7

    .line 856
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 857
    return-void

    .line 859
    :cond_7
    iget-object v0, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v11, v4

    .line 863
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v13, v4

    .line 867
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 868
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Landroid/app/SharedPreferencesImpl;->mMode:I

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 875
    :try_start_3
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    move-object v4, v0

    .line 876
    .local v4, "stat":Landroid/system/StructStat;
    iget-object v5, v1, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 877
    :try_start_4
    iget-object v0, v4, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, v1, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 878
    iget-wide v6, v4, Landroid/system/StructStat;->st_size:J

    iput-wide v6, v1, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 879
    monitor-exit v5

    .line 882
    .end local v4    # "stat":Landroid/system/StructStat;
    goto :goto_3

    .line 879
    .restart local v4    # "stat":Landroid/system/StructStat;
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .end local v9    # "outputStreamCreateTime":J
    .end local v11    # "writeTime":J
    .end local v13    # "fsyncTime":J
    .end local v15    # "setPermTime":J
    .end local v17    # "fstatTime":J
    .end local v19    # "deleteTime":J
    .end local v21    # "fileExists":Z
    .end local v22    # "startTime":J
    .end local v25    # "existsTime":J
    .end local v27    # "backupExistsTime":J
    .end local p0    # "this":Landroid/app/SharedPreferencesImpl;
    .end local p1    # "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .end local p2    # "isFromSyncCommit":Z
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 880
    .end local v4    # "stat":Landroid/system/StructStat;
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStreamCreateTime":J
    .restart local v11    # "writeTime":J
    .restart local v13    # "fsyncTime":J
    .restart local v15    # "setPermTime":J
    .restart local v17    # "fstatTime":J
    .restart local v19    # "deleteTime":J
    .restart local v21    # "fileExists":Z
    .restart local v22    # "startTime":J
    .restart local v25    # "existsTime":J
    .restart local v27    # "backupExistsTime":J
    .restart local p0    # "this":Landroid/app/SharedPreferencesImpl;
    .restart local p1    # "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .restart local p2    # "isFromSyncCommit":Z
    :catch_0
    move-exception v0

    .line 889
    :goto_3
    :try_start_6
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 895
    iget-wide v4, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    iput-wide v4, v1, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    .line 897
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 910
    sub-long v4, v13, v11

    .line 911
    .local v4, "fsyncDuration":J
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    long-to-int v6, v4

    invoke-virtual {v0, v6}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 912
    iget v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 914
    rem-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const-wide/16 v6, 0x100

    cmp-long v0, v4, v6

    if-lez v0, :cond_9

    .line 915
    :cond_8
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const-string v6, "SharedPreferencesImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time required to fsync "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 918
    :cond_9
    return-void

    .line 921
    .end local v3    # "str":Ljava/io/FileOutputStream;
    .end local v4    # "fsyncDuration":J
    :catch_1
    move-exception v0

    .line 922
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 919
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 920
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 926
    :goto_4
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 927
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a

    .line 928
    const-string v0, "SharedPreferencesImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clean up partially-written file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 932
    return-void
.end method


# virtual methods
.method public whitelist contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 358
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 371
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    return-object v0

    .line 373
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 297
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 347
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 349
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 350
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    .line 351
    .end local v1    # "v":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 339
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 341
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 342
    .local v1, "v":Ljava/lang/Float;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    .line 343
    .end local v1    # "v":Ljava/lang/Float;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 323
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 325
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 326
    .local v1, "v":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    .line 327
    .end local v1    # "v":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 331
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 333
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 334
    .local v1, "v":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p2

    :goto_0
    monitor-exit v0

    return-wide v2

    .line 335
    .end local v1    # "v":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 306
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    monitor-exit v0

    return-object v2

    .line 308
    .end local v1    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 316
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 317
    .local v1, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    monitor-exit v0

    return-object v2

    .line 318
    .end local v1    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 261
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v2, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist startReloadIfChangedUnexpectedly()V
    .locals 2

    .line 222
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    monitor-exit v0

    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 268
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
