.class public final Landroid/database/sqlite/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnectionPool$SecureData;,
        Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;,
        Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;,
        Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;,
        Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o CONNECTION_FLAG_INTERACTIVE:I = 0x4

.field public static final greylist-max-o CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY:I = 0x2

.field public static final greylist-max-o CONNECTION_FLAG_READ_ONLY:I = 0x1

.field private static final greylist-max-o CONNECTION_POOL_BUSY_MILLIS:J = 0xfa0L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteConnectionPool"


# instance fields
.field private final greylist-max-o mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/database/sqlite/SQLiteConnection;",
            "Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private blacklist mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

.field private final greylist-max-o mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private greylist-max-o mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private blacklist mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private greylist-max-o mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

.field private greylist-max-o mIsOpen:Z

.field private blacklist mIsPoolSizeFixed:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMaxConnectionPoolSize:I

.field private greylist-max-o mNextConnectionId:I

.field private blacklist mRandArrPtr:J

.field private final blacklist mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionHandler(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcloseAvailableConnectionLocked(Landroid/database/sqlite/SQLiteConnectionPool;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionLocked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseAvailableConnectionMemoryLocked(Landroid/database/sqlite/SQLiteConnectionPool;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseAvailableConnectionMemoryLocked(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 99
    return-void
.end method

.method private constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 161
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 197
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 198
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 199
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 205
    iget-wide v3, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 206
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->setupIdleConnectionHandler(Landroid/os/Looper;J)V

    goto :goto_0

    .line 208
    :cond_0
    iget-wide v3, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionShrinkTimeoutMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 209
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionShrinkTimeoutMs:J

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->setupIdleConnectionShrinkHandler(Landroid/os/Looper;J)V

    .line 212
    :cond_1
    :goto_0
    iget-object v3, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v3, v3, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v3, :cond_4

    .line 214
    :try_start_0
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->createRandArray()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    .line 215
    cmp-long v1, v3, v1

    if-eqz v1, :cond_2

    .line 216
    new-instance v1, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    invoke-direct {v1, p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_2
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SQLiteConnectionPool"

    const-string v2, "Could not generate SQLiteConnectionPool"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-nez v1, :cond_3

    goto :goto_1

    .line 221
    :cond_3
    throw v0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void
.end method

.method private greylist-max-o cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 3
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1078
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1084
    :cond_0
    const/4 v0, 0x0

    .line 1085
    .local v0, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1086
    .local v1, "current":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_0
    if-eq v1, p1, :cond_1

    .line 1087
    nop

    .line 1088
    move-object v0, v1

    .line 1089
    iget-object v1, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_0

    .line 1091
    :cond_1
    if-eqz v0, :cond_2

    .line 1092
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_1

    .line 1094
    :cond_2
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1098
    :goto_1
    new-instance v2, Landroid/os/OperationCanceledException;

    invoke-direct {v2}, Landroid/os/OperationCanceledException;-><init>()V

    iput-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 1099
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1102
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 1103
    return-void

    .line 1080
    .end local v0    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v1    # "current":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_3
    :goto_2
    return-void
.end method

.method private blacklist changeLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .line 811
    if-nez p1, :cond_0

    .line 812
    const-string v0, ""

    return-object v0

    .line 814
    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o closeAvailableConnectionLocked(I)Z
    .locals 5
    .param p1, "connectionId"    # I

    .line 831
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 832
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 833
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection;

    .line 834
    .local v3, "c":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 835
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 836
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 837
    return v2

    .line 832
    .end local v3    # "c":Landroid/database/sqlite/SQLiteConnection;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 841
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_2

    .line 842
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 843
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 844
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 845
    return v2

    .line 847
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o closeAvailableConnectionsAndLogExceptionsLocked()V
    .locals 1

    .line 820
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 822
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    .line 823
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 826
    :cond_0
    return-void
.end method

.method private greylist-max-o closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .locals 3

    .line 853
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 854
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 855
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 858
    return-void
.end method

.method private greylist-max-o closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;

    .line 885
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->close()V

    .line 886
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionClosed(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :cond_0
    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private greylist-max-o closeExcessConnectionsAndLogExceptionsLocked()V
    .locals 3

    .line 873
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 874
    .local v0, "availableCount":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "availableCount":I
    .local v1, "availableCount":I
    iget v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 875
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 876
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 877
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 878
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    move v0, v1

    goto :goto_0

    .line 879
    :cond_0
    return-void
.end method

.method private greylist-max-o discardAcquiredConnectionsLocked()V
    .locals 1

    .line 897
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 898
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .locals 6
    .param p1, "finalized"    # Z

    .line 334
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 341
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 343
    if-nez p1, :cond_3

    .line 348
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 351
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 353
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 355
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    .line 356
    .local v1, "pendingCount":I
    if-eqz v1, :cond_2

    .line 357
    const-string v2, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The connection pool for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->changeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been closed but there are still "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connections in use.  They will be closed as they are released back to the pool."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 364
    .end local v1    # "pendingCount":I
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 367
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v0, :cond_5

    .line 368
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_1
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 370
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteGlobal;->clearRandArray(J)V

    .line 371
    iput-wide v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    .line 373
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 375
    :cond_5
    :goto_1
    return-void
.end method

.method private greylist-max-o finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V
    .locals 3
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    .line 1308
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1309
    .local v0, "readOnly":Z
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    .line 1311
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    sget-object v2, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    nop

    .line 1318
    .end local v0    # "readOnly":Z
    return-void

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare acquired connection for session, closing it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectionFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 1316
    throw v0
.end method

.method private static greylist-max-o getPriority(I)I
    .locals 1
    .param p0, "connectionFlags"    # I

    .line 1345
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .locals 3
    .param p1, "holdingPrimaryConnection"    # Z
    .param p2, "connectionFlags"    # I

    .line 1322
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1323
    .local v0, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v0, :cond_4

    .line 1324
    invoke-static {p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v1

    .line 1327
    .local v1, "priority":I
    :cond_0
    iget v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v1, v2, :cond_1

    .line 1328
    goto :goto_1

    .line 1334
    :cond_1
    if-nez p1, :cond_3

    iget-boolean v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v2, :cond_2

    goto :goto_0

    .line 1338
    :cond_2
    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1339
    if-nez v0, :cond_0

    goto :goto_1

    .line 1335
    :cond_3
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1341
    .end local v1    # "priority":I
    :cond_4
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o logConnectionPoolBusyLocked(JI)V
    .locals 10
    .param p1, "waitMillis"    # J
    .param p3, "connectionFlags"    # I

    .line 1107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1108
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v2, "The connection pool for database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->changeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v2, "\' has been unable to grant a connection to thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    const-string/jumbo v2, "with flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-float v3, p1

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v2, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1117
    .local v3, "activeConnections":I
    const/4 v4, 0x0

    .line 1118
    .local v4, "idleConnections":I
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1119
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteConnection;

    .line 1120
    .local v6, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    move-result-object v7

    .line 1121
    .local v7, "description":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1122
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1125
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 1127
    .end local v6    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v7    # "description":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1129
    :cond_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1130
    .local v5, "availableConnections":I
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v6, :cond_2

    .line 1131
    add-int/lit8 v5, v5, 0x1

    .line 1134
    :cond_2
    const-string v6, "Connections: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " active, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " idle, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " available.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1139
    const-string v6, "\nRequests in progress:\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1141
    .local v7, "request":Ljava/lang/String;
    const-string v8, "  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    .end local v7    # "request":Ljava/lang/String;
    goto :goto_2

    .line 1145
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SQLiteConnectionPool"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-void
.end method

.method private greylist-max-o markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .locals 1
    .param p1, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 933
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;Z)V

    .line 934
    return-void
.end method

.method private blacklist markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;Z)V
    .locals 5
    .param p1, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .param p2, "markPrimaryConnection"    # Z

    .line 938
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 939
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 940
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 942
    .local v0, "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 943
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 944
    .local v3, "oldStatus":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eq p1, v3, :cond_1

    sget-object v4, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eq v3, v4, :cond_1

    .line 946
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    .line 947
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v3    # "oldStatus":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_1
    goto :goto_0

    .line 951
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 952
    .local v1, "updateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 953
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v3, v4, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 956
    .end local v0    # "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    .end local v1    # "updateCount":I
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private greylist-max-o obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "startTime"    # J
    .param p4, "priority"    # I
    .param p5, "wantPrimaryConnection"    # Z
    .param p6, "sql"    # Ljava/lang/String;
    .param p7, "connectionFlags"    # I

    .line 1400
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1401
    .local v0, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1402
    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1403
    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_0

    .line 1405
    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter-IA;)V

    move-object v0, v2

    .line 1407
    :goto_0
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 1408
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 1409
    iput p4, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 1410
    iput-boolean p5, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 1411
    iput-object p6, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 1412
    iput p7, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 1413
    return-object v0
.end method

.method public static blacklist open(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 246
    if-eqz p0, :cond_1

    .line 249
    if-eqz p1, :cond_0

    .line 254
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 255
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open()V

    .line 256
    return-object v0

    .line 250
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuration must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "database must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o open()V
    .locals 4

    .line 288
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 291
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v2, :cond_0

    .line 293
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionReleased(Landroid/database/sqlite/SQLiteConnection;)V

    .line 295
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 299
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "SQLiteConnectionPool.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 300
    return-void

    .line 295
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;
    .locals 3
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "primaryConnection"    # Z

    .line 742
    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    .line 743
    .local v0, "connectionId":I
    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 745
    .local v1, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-eqz p2, :cond_0

    .line 748
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection;->isForcedReadOnlyConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const/4 v2, 0x1

    iput v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 750
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsPoolSizeFixed:Z

    .line 751
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 754
    :cond_0
    return-object v1
.end method

.method public static blacklist openSecure(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;[B)Landroid/database/sqlite/SQLiteConnectionPool;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "password"    # [B

    .line 271
    if-eqz p0, :cond_1

    .line 274
    if-eqz p1, :cond_0

    .line 279
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 280
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-direct {v0, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecure([B)V

    .line 281
    return-object v0

    .line 275
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuration must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "database must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist openSecure([B)V
    .locals 4
    .param p1, "password"    # [B

    .line 305
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecureConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z[B)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 307
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v2, :cond_0

    .line 309
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionReleased(Landroid/database/sqlite/SQLiteConnection;)V

    .line 311
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 315
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "SQLiteConnectionPool.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 316
    return-void

    .line 311
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist openSecureConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z[B)Landroid/database/sqlite/SQLiteConnection;
    .locals 3
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "primaryConnection"    # Z
    .param p3, "password"    # [B

    .line 759
    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    .line 760
    .local v0, "connectionId":I
    invoke-static {p0, p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteConnection;->openSecure(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ[B)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 762
    .local v1, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-eqz p2, :cond_0

    .line 765
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection;->isForcedReadOnlyConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    const/4 v2, 0x1

    iput v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 767
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsPoolSizeFixed:Z

    .line 768
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 771
    :cond_0
    return-object v1
.end method

.method private greylist-max-o reconfigureAllConnectionsLocked()V
    .locals 7

    .line 903
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v1, "SQLiteConnectionPool"

    if-eqz v0, :cond_0

    .line 905
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reconfigure available primary connection, closing it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 910
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 914
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 915
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 916
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection;

    .line 918
    .local v3, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 925
    goto :goto_2

    .line 919
    :catch_1
    move-exception v4

    .line 920
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to reconfigure available non-primary connection, closing it: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 923
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 924
    add-int/lit8 v0, v0, -0x1

    move v2, v6

    .line 915
    .end local v3    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 928
    .end local v2    # "i":I
    :cond_1
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 929
    return-void
.end method

.method private greylist-max-o recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .locals 3
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 671
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_0

    .line 673
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to reconfigure released connection, closing it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    sget-object p2, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 680
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_1

    .line 681
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 682
    const/4 v0, 0x0

    return v0

    .line 684
    :cond_1
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->SHRINK:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_2

    .line 685
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->releaseConnectionMemory()V

    .line 687
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 1
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1417
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1418
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 1419
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 1420
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 1421
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 1422
    iget v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 1423
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1424
    return-void
.end method

.method private blacklist releaseAvailableConnectionMemoryLocked(I)Z
    .locals 5
    .param p1, "connectionId"    # I

    .line 1454
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1455
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 1456
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection;

    .line 1457
    .local v3, "c":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1458
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection;->releaseConnectionMemory()V

    .line 1459
    return v2

    .line 1455
    .end local v3    # "c":Landroid/database/sqlite/SQLiteConnection;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1463
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_2

    .line 1464
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 1465
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection;->releaseConnectionMemory()V

    .line 1466
    return v2

    .line 1468
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o setMaxConnectionPoolSizeLocked()V
    .locals 3

    .line 1349
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsPoolSizeFixed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    if-eqz v0, :cond_0

    .line 1350
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->useSingleConnectionWal:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1353
    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 1354
    return-void

    .line 1357
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1358
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALConnectionPoolSize()I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    goto :goto_0

    .line 1365
    :cond_2
    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 1367
    :goto_0
    return-void
.end method

.method private greylist-max-o throwIfClosedLocked()V
    .locals 2

    .line 1392
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 1396
    return-void

    .line 1393
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the connection pool has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I

    .line 1252
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1253
    .local v0, "availableCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 1256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1257
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 1258
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1260
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 1261
    return-object v2

    .line 1256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1265
    .end local v1    # "i":I
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_1
    if-lez v0, :cond_2

    .line 1267
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteConnection;

    .line 1268
    .local v1, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 1269
    return-object v1

    .line 1273
    .end local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    .line 1274
    .local v1, "openConnections":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v2, :cond_3

    .line 1275
    add-int/lit8 v1, v1, 0x1

    .line 1277
    :cond_3
    iget v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_4

    .line 1278
    return-object v3

    .line 1281
    :cond_4
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v2, v2, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 1284
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    .line 1285
    invoke-static {v6, v7}, Landroid/database/sqlite/SQLiteGlobal;->getRandArray(J)[C

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->decryptAndGet([C)[B

    move-result-object v5

    .line 1284
    invoke-direct {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecureConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z[B)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    .restart local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_1

    .line 1288
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :catch_0
    move-exception v2

    .line 1289
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SQLiteConnectionPool"

    const-string v5, "Unable to open new connection due to lack of key, go on"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    sget-boolean v4, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-nez v4, :cond_5

    .line 1293
    return-object v3

    .line 1291
    :cond_5
    throw v2

    .line 1286
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1287
    .local v2, "se":Landroid/database/sqlite/SQLiteException;
    throw v2

    .line 1296
    .end local v2    # "se":Landroid/database/sqlite/SQLiteException;
    :cond_6
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {p0, v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v2

    .line 1300
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    :goto_1
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 1301
    return-object v2
.end method

.method private greylist-max-o tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;
    .locals 6
    .param p1, "connectionFlags"    # I

    .line 1215
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 1216
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1217
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 1218
    invoke-direct {p0, v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 1219
    return-object v0

    .line 1223
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection;

    .line 1224
    .local v3, "acquiredConnection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1225
    return-object v1

    .line 1227
    .end local v3    # "acquiredConnection":Landroid/database/sqlite/SQLiteConnection;
    :cond_1
    goto :goto_0

    .line 1231
    :cond_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1233
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    if-eqz v1, :cond_3

    .line 1236
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    .line 1237
    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteGlobal;->getRandArray(J)[C

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->decryptAndGet([C)[B

    move-result-object v1

    .line 1236
    invoke-direct {p0, v3, v2, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecureConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z[B)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    goto :goto_1

    .line 1234
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not open a new primary connection due to the lack of password."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1239
    :cond_4
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    .line 1242
    :goto_1
    invoke-direct {p0, v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 1243
    return-object v0
.end method

.method private greylist-max-o waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .locals 21
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 961
    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    and-int/lit8 v0, v10, 0x2

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    move v14, v0

    .line 966
    .local v14, "wantPrimaryConnection":Z
    iget-object v15, v9, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 967
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 970
    if-eqz v11, :cond_1

    .line 971
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    goto :goto_1

    .line 1009
    :catchall_0
    move-exception v0

    move v12, v14

    goto/16 :goto_b

    .line 975
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 976
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-nez v14, :cond_2

    .line 977
    invoke-direct/range {p0 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    move-object v0, v1

    .line 980
    :cond_2
    if-nez v0, :cond_3

    .line 981
    invoke-direct {v9, v10}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    move-object v0, v1

    .line 983
    :cond_3
    if-eqz v0, :cond_4

    .line 984
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 988
    :cond_4
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v1

    move v8, v1

    .line 989
    .local v8, "priority":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 990
    .local v3, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v1, p0

    move v5, v8

    move v6, v14

    move-object/from16 v7, p1

    move v12, v8

    .end local v8    # "priority":I
    .local v12, "priority":I
    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/database/sqlite/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-result-object v1

    .line 992
    .local v1, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v2, 0x0

    .line 993
    .local v2, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v5, v9, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 994
    .local v5, "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_2
    if-eqz v5, :cond_6

    .line 995
    :try_start_3
    iget v6, v5, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v12, v6, :cond_5

    .line 996
    iput-object v5, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 997
    goto :goto_3

    .line 999
    :cond_5
    move-object v2, v5

    .line 1000
    iget-object v6, v5, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object v5, v6

    goto :goto_2

    .line 1002
    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 1003
    iput-object v1, v2, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1005
    :cond_7
    :try_start_4
    iput-object v1, v9, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1008
    :goto_4
    iget v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    move v2, v6

    .line 1009
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v3    # "startTime":J
    .end local v5    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v12    # "priority":I
    .local v2, "nonce":I
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 1012
    if-eqz v11, :cond_8

    .line 1013
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$1;

    invoke-direct {v0, v9, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$1;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V

    invoke-virtual {v11, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1027
    :cond_8
    const-wide/16 v3, 0xfa0

    .line 1028
    .local v3, "busyTimeoutMillis":J
    :try_start_5
    iget-wide v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    add-long/2addr v6, v3

    .line 1031
    .local v6, "nextBusyTimeoutTime":J
    :goto_5
    iget-object v0, v9, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v0, :cond_9

    .line 1032
    :try_start_6
    iget-object v12, v9, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1033
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 1034
    monitor-exit v12

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v1    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v2    # "nonce":I
    .end local v14    # "wantPrimaryConnection":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "connectionFlags":I
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1069
    .end local v3    # "busyTimeoutMillis":J
    .end local v6    # "nextBusyTimeoutTime":J
    .restart local v1    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v2    # "nonce":I
    .restart local v14    # "wantPrimaryConnection":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "connectionFlags":I
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v0

    move v12, v14

    goto :goto_a

    .line 1038
    .restart local v3    # "busyTimeoutMillis":J
    .restart local v6    # "nextBusyTimeoutTime":J
    :cond_9
    :goto_6
    const-wide/32 v15, 0xf4240

    move v12, v14

    .end local v14    # "wantPrimaryConnection":Z
    .local v12, "wantPrimaryConnection":Z
    mul-long v13, v3, v15

    :try_start_9
    invoke-static {v9, v13, v14}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1041
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1044
    iget-object v13, v9, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1045
    :try_start_a
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 1047
    iget-object v14, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 1048
    .local v14, "connection":Landroid/database/sqlite/SQLiteConnection;
    iget-object v15, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 1049
    .local v15, "ex":Ljava/lang/RuntimeException;
    if-nez v14, :cond_c

    if-eqz v15, :cond_a

    move-wide/from16 v19, v6

    goto :goto_8

    .line 1057
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1058
    .local v16, "now":J
    cmp-long v18, v16, v6

    if-gez v18, :cond_b

    .line 1059
    sub-long v3, v16, v6

    goto :goto_7

    .line 1061
    :cond_b
    move-wide/from16 v19, v6

    .end local v6    # "nextBusyTimeoutTime":J
    .local v19, "nextBusyTimeoutTime":J
    :try_start_b
    iget-wide v5, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v5, v16, v5

    invoke-direct {v9, v5, v6, v10}, Landroid/database/sqlite/SQLiteConnectionPool;->logConnectionPoolBusyLocked(JI)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1062
    const-wide/16 v3, 0xfa0

    .line 1063
    add-long v5, v16, v3

    move-wide v6, v5

    .line 1065
    .end local v14    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v15    # "ex":Ljava/lang/RuntimeException;
    .end local v16    # "now":J
    .end local v19    # "nextBusyTimeoutTime":J
    .restart local v6    # "nextBusyTimeoutTime":J
    :goto_7
    :try_start_c
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move v14, v12

    const/4 v13, 0x0

    goto :goto_5

    .line 1049
    .restart local v14    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v15    # "ex":Ljava/lang/RuntimeException;
    :cond_c
    move-wide/from16 v19, v6

    .line 1050
    .end local v6    # "nextBusyTimeoutTime":J
    .restart local v19    # "nextBusyTimeoutTime":J
    :goto_8
    :try_start_d
    invoke-direct {v9, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 1051
    if-eqz v14, :cond_e

    .line 1052
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1069
    if-eqz v11, :cond_d

    .line 1070
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1052
    :cond_d
    return-object v14

    .line 1054
    :cond_e
    nop

    .end local v1    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v2    # "nonce":I
    .end local v3    # "busyTimeoutMillis":J
    .end local v12    # "wantPrimaryConnection":Z
    .end local v19    # "nextBusyTimeoutTime":J
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "connectionFlags":I
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_e
    throw v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1065
    .end local v14    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v15    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v2    # "nonce":I
    .restart local v3    # "busyTimeoutMillis":J
    .restart local v12    # "wantPrimaryConnection":Z
    .restart local v19    # "nextBusyTimeoutTime":J
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "connectionFlags":I
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3
    move-exception v0

    move-wide/from16 v6, v19

    goto :goto_9

    .end local v19    # "nextBusyTimeoutTime":J
    .restart local v6    # "nextBusyTimeoutTime":J
    :catchall_4
    move-exception v0

    move-wide/from16 v19, v6

    :goto_9
    :try_start_f
    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .end local v1    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v2    # "nonce":I
    .end local v12    # "wantPrimaryConnection":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "connectionFlags":I
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .restart local v1    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v2    # "nonce":I
    .restart local v12    # "wantPrimaryConnection":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "connectionFlags":I
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_5
    move-exception v0

    goto :goto_9

    .line 1069
    .end local v3    # "busyTimeoutMillis":J
    .end local v6    # "nextBusyTimeoutTime":J
    :catchall_6
    move-exception v0

    goto :goto_a

    .end local v12    # "wantPrimaryConnection":Z
    .local v14, "wantPrimaryConnection":Z
    :catchall_7
    move-exception v0

    move v12, v14

    .end local v14    # "wantPrimaryConnection":Z
    .restart local v12    # "wantPrimaryConnection":Z
    :goto_a
    if-eqz v11, :cond_f

    .line 1070
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1072
    :cond_f
    throw v0

    .line 1009
    .end local v1    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v2    # "nonce":I
    .end local v12    # "wantPrimaryConnection":Z
    .restart local v14    # "wantPrimaryConnection":Z
    :catchall_8
    move-exception v0

    move v12, v14

    .end local v14    # "wantPrimaryConnection":Z
    .restart local v12    # "wantPrimaryConnection":Z
    :goto_b
    :try_start_11
    monitor-exit v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_b
.end method

.method private greylist-max-o wakeConnectionWaitersLocked()V
    .locals 8

    .line 1154
    const/4 v0, 0x0

    .line 1155
    .local v0, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1156
    .local v1, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v2, 0x0

    .line 1157
    .local v2, "primaryConnectionNotAvailable":Z
    const/4 v3, 0x0

    .line 1158
    .local v3, "nonPrimaryConnectionNotAvailable":Z
    :goto_0
    if-eqz v1, :cond_7

    .line 1159
    const/4 v4, 0x0

    .line 1160
    .local v4, "unpark":Z
    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v5, :cond_0

    .line 1161
    const/4 v4, 0x1

    goto :goto_2

    .line 1164
    :cond_0
    const/4 v5, 0x0

    .line 1165
    .local v5, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    iget-boolean v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v6, :cond_1

    if-nez v3, :cond_1

    .line 1166
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iget v7, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v6, v7}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v6

    move-object v5, v6

    .line 1168
    if-nez v5, :cond_1

    .line 1169
    const/4 v3, 0x1

    .line 1172
    :cond_1
    if-nez v5, :cond_2

    if-nez v2, :cond_2

    .line 1173
    iget v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v6}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v6

    move-object v5, v6

    .line 1175
    if-nez v5, :cond_2

    .line 1176
    const/4 v2, 0x1

    .line 1179
    :cond_2
    if-eqz v5, :cond_3

    .line 1180
    iput-object v5, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    const/4 v4, 0x1

    goto :goto_1

    .line 1182
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 1185
    goto :goto_5

    .line 1191
    .end local v5    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_4
    :goto_1
    goto :goto_2

    .line 1187
    :catch_0
    move-exception v5

    .line 1189
    .local v5, "ex":Ljava/lang/RuntimeException;
    iput-object v5, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 1190
    const/4 v4, 0x1

    .line 1194
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :goto_2
    iget-object v5, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1195
    .local v5, "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v4, :cond_6

    .line 1196
    if-eqz v0, :cond_5

    .line 1197
    iput-object v5, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_3

    .line 1199
    :cond_5
    iput-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1201
    :goto_3
    const/4 v6, 0x0

    iput-object v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1203
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_4

    .line 1205
    :cond_6
    move-object v0, v1

    .line 1207
    :goto_4
    move-object v1, v5

    .line 1208
    .end local v4    # "unpark":Z
    .end local v5    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    goto :goto_0

    .line 1209
    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public greylist-max-o acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 615
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    .line 616
    .local v0, "con":Landroid/database/sqlite/SQLiteConnection;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v2, :cond_0

    .line 618
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionAcquired(Landroid/database/sqlite/SQLiteConnection;)V

    .line 620
    :cond_0
    monitor-exit v1

    .line 621
    return-object v0

    .line 620
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist changePassword(Landroid/database/sqlite/SQLiteConnection;[B)V
    .locals 5
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "newPassword"    # [B

    .line 423
    const-string v0, "SQLiteConnectionPool"

    const-string v1, "changePassword..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    nop

    .line 427
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v1, :cond_3

    .line 431
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;Z)V

    .line 435
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 436
    nop

    .line 438
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteConnection;->changePassword([B)[B

    move-result-object v1

    .line 439
    .local v1, "key":[B
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 441
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->clear()V

    .line 442
    if-eqz v1, :cond_0

    .line 443
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->saveConnectionKey([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :cond_0
    goto :goto_0

    .line 445
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "SQLiteConnectionPool"

    const-string v4, "Could not change Password"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local p2    # "newPassword":[B
    throw v2

    .line 453
    .end local v1    # "key":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local p2    # "newPassword":[B
    :cond_2
    :goto_0
    monitor-exit v0

    .line 454
    return-void

    .line 428
    :cond_3
    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not change password of normal db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not change password of normal db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local p2    # "newPassword":[B
    throw v1

    .line 453
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local p2    # "newPassword":[B
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1
.end method

.method public whitelist test-api close()V
    .locals 1

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V

    .line 331
    return-void
.end method

.method public blacklist closeAndDiscardNonPrimaryConnections(ZZ)V
    .locals 3
    .param p1, "needDiscard"    # Z
    .param p2, "fixPoolSize"    # Z

    .line 1427
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 1429
    if-eqz p1, :cond_0

    .line 1430
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;Z)V

    .line 1431
    const/4 v1, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 1432
    if-eqz p2, :cond_0

    .line 1433
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsPoolSizeFixed:Z

    .line 1436
    :cond_0
    monitor-exit v0

    .line 1437
    return-void

    .line 1436
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o closeAvailableNonPrimaryConnectionsAndLogExceptions()V
    .locals 2

    .line 865
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 867
    monitor-exit v0

    .line 868
    return-void

    .line 867
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o collectDbStats(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 724
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 729
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 730
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 731
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_0

    .line 733
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 734
    .restart local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V

    .line 735
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_1

    .line 736
    :cond_2
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o disableIdleConnectionHandler()V
    .locals 2

    .line 1386
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1387
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    .line 1388
    monitor-exit v0

    .line 1389
    return-void

    .line 1388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dump(Landroid/util/Printer;ZLandroid/util/ArraySet;)V
    .locals 11
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Printer;",
            "Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1532
    .local p3, "directories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v0, "    "

    invoke-static {p1, v0}, Landroid/util/PrefixPrinter;->create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;

    move-result-object v0

    .line 1533
    .local v0, "indentedPrinter":Landroid/util/Printer;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1534
    if-eqz p3, :cond_0

    .line 1535
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1537
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isLegacyCompatibilityWalEnabled()Z

    move-result v2

    .line 1538
    .local v2, "isCompatibilityWalEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection pool for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1541
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isUdrEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteUserDataRecovery;->isDbUdrRecovered(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1542
    const-string v4, "  UDR: true"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1544
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Max connections: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Total execution time (ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Total statements executed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1547
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 1549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Average time per statement (ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1550
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1549
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1552
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Configuration: openFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isLegacyCompatibilityWalEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", journalMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1554
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", syncMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1555
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1552
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  IsReadOnlyDatabase="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isReadOnlyDatabase()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1558
    if-eqz v2, :cond_3

    .line 1559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Compatibility WAL enabled: wal_syncmode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1560
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->getWALSyncMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1559
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1562
    :cond_3
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isLookasideConfigSet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Lookaside config: sz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1566
    :cond_4
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 1567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Idle connection timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v8, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1570
    :cond_5
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionShrinkTimeoutMs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 1571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Idle connection shrink timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionShrinkTimeoutMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1575
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Secure db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1576
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1578
    const-string v4, "  Use WAL mode. "

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1581
    :cond_7
    const-string v4, "  Available primary connection:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1582
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v4, :cond_8

    .line 1583
    invoke-virtual {v4, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    goto :goto_0

    .line 1585
    :cond_8
    const-string v4, "<none>"

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1588
    :goto_0
    const-string v4, "  Available non-primary connections:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1589
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1590
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1591
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_9

    .line 1592
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v6, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    .line 1591
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1594
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_9
    goto :goto_2

    .line 1595
    :cond_a
    const-string v4, "<none>"

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1598
    :goto_2
    const-string v4, "  Acquired connections:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1599
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1601
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1602
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteConnection;

    .line 1603
    .local v6, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v6, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1605
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v6    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_3

    :cond_b
    goto :goto_4

    .line 1607
    :cond_c
    const-string v4, "<none>"

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1610
    :goto_4
    const-string v4, "  Connection waiters:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1611
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    if-eqz v4, :cond_e

    .line 1612
    const/4 v4, 0x0

    .line 1613
    .local v4, "i":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1614
    .local v5, "now":J
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .local v7, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_5
    if-eqz v7, :cond_d

    .line 1616
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": waited for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v9, v5, v9

    long-to-float v9, v9

    const v10, 0x3a83126f    # 0.001f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms - thread="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", priority="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sql=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1615
    iget-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1622
    .end local v4    # "i":I
    .end local v5    # "now":J
    .end local v7    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_d
    goto :goto_6

    .line 1623
    :cond_e
    const-string v4, "<none>"

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1625
    .end local v2    # "isCompatibilityWalEnabled":Z
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_6
    monitor-exit v1

    .line 1626
    return-void

    .line 1625
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist exportDB(Ljava/lang/String;)V
    .locals 3
    .param p1, "attachedDB"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 583
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 589
    nop

    .line 591
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnection;->exportDB(Ljava/lang/String;)V

    .line 592
    monitor-exit v0

    .line 593
    return-void

    .line 584
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Release all active connections before starting DB export"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "attachedDB":Ljava/lang/String;
    throw v1

    .line 592
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "attachedDB":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 230
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 233
    nop

    .line 234
    return-void

    .line 232
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 233
    throw v0
.end method

.method blacklist getConnectionKey()[B
    .locals 3

    .line 401
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    if-eqz v0, :cond_0

    .line 403
    :try_start_0
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteGlobal;->getRandArray(J)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->decryptAndGet([C)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SQLiteConnectionPool"

    const-string v2, "Could not get ConnectionKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1473
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public blacklist getMaxConnectionPoolSize()I
    .locals 2

    .line 1507
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 1509
    .local v1, "poolSize":I
    monitor-exit v0

    .line 1510
    return v1

    .line 1509
    .end local v1    # "poolSize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    .line 1642
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTotalStatementsCount()J
    .locals 2

    .line 1633
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalStatementsTime()J
    .locals 2

    .line 1629
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isConnectionAcquired()Z
    .locals 2

    .line 1520
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1521
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o onConnectionLeaked()V
    .locals 2

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A SQLiteConnection object for database \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 796
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->changeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' was leaked!  Please fix your application to end transactions in progress properly and to close the database when it is no longer needed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    const-string v1, "SQLiteConnectionPool"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 801
    return-void
.end method

.method greylist-max-o onStatementExecuted(J)V
    .locals 1
    .param p1, "executionTimeMs"    # J

    .line 804
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 805
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalStatementsCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 806
    return-void
.end method

.method public blacklist reOpen()V
    .locals 6

    .line 1477
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v0, :cond_0

    return-void

    .line 1479
    :cond_0
    const-string v0, "SQLiteConnectionPool"

    const-string/jumbo v1, "try reOpen connection..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    if-nez v1, :cond_1

    .line 1483
    const-string v1, "SQLiteConnectionPool"

    const-string v2, "Could not re-open connection due to the lack of password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    monitor-exit v0

    return-void

    .line 1488
    :cond_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 1489
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;Z)V

    .line 1492
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 1493
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 1494
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    .line 1495
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1496
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    .line 1497
    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteGlobal;->getRandArray(J)[C

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->decryptAndGet([C)[B

    move-result-object v3

    .line 1496
    invoke-direct {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecureConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z[B)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .local v1, "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_0

    .line 1499
    .end local v1    # "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 1501
    .restart local v1    # "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    :goto_0
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 1502
    .end local v1    # "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    monitor-exit v0

    .line 1503
    return-void

    .line 1502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 11
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 487
    if-eqz p1, :cond_b

    .line 491
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 494
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 496
    .local v1, "isWalCurrentMode":Z
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 498
    .local v2, "isWalNewMode":Z
    xor-int v3, v1, v2

    .line 499
    .local v3, "walModeChanged":Z
    if-eqz v3, :cond_1

    .line 502
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 512
    goto :goto_0

    .line 503
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    throw v4

    .line 515
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    :cond_1
    :goto_0
    iget-boolean v4, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v6

    .line 517
    .local v4, "foreignKeyModeChanged":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 521
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 522
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    throw v5

    .line 531
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    :cond_4
    :goto_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v5, v8

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_5

    move v6, v7

    :cond_5
    move v5, v6

    .line 534
    .local v5, "onlyCompatWalChanged":Z
    if-nez v5, :cond_a

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    if-eq v6, v8, :cond_a

    .line 535
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v6, v6, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    if-eqz v6, :cond_6

    goto :goto_3

    .line 536
    :cond_6
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Could not reconfigure SQLiteConnectionPool due to the lack of password,"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    throw v6

    .line 541
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "configuration":Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 542
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 549
    :cond_8
    const/4 v6, 0x0

    .line 550
    .local v6, "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v8, v8, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v8, :cond_9

    .line 552
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    iget-wide v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    .line 553
    invoke-static {v9, v10}, Landroid/database/sqlite/SQLiteGlobal;->getRandArray(J)[C

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->decryptAndGet([C)[B

    move-result-object v8

    .line 552
    invoke-direct {p0, p1, v7, v8}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecureConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z[B)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v7

    move-object v6, v7

    goto :goto_4

    .line 555
    :cond_9
    invoke-direct {p0, p1, v7}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v7

    move-object v6, v7

    .line 559
    :goto_4
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 560
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    .line 562
    iput-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 563
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v7, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 564
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 565
    .end local v6    # "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_5

    .line 567
    :cond_a
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v6, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 568
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 570
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    .line 571
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V

    .line 574
    :goto_5
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 575
    .end local v1    # "isWalCurrentMode":Z
    .end local v2    # "isWalNewMode":Z
    .end local v3    # "walModeChanged":Z
    .end local v4    # "foreignKeyModeChanged":Z
    .end local v5    # "onlyCompatWalChanged":Z
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 488
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuration must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 4
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;

    .line 637
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->connectionReleased(Landroid/database/sqlite/SQLiteConnection;)V

    .line 641
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 642
    .local v1, "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eqz v1, :cond_6

    .line 648
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v2, :cond_1

    .line 649
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 652
    nop

    .line 653
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 655
    :cond_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_0

    .line 656
    :cond_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_4

    .line 657
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    goto :goto_0

    .line 659
    :cond_4
    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 660
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_5
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 664
    .end local v1    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :goto_0
    monitor-exit v0

    .line 665
    return-void

    .line 643
    .restart local v1    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    throw v2

    .line 664
    .end local v1    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist releaseConnectionMemory()V
    .locals 3

    .line 1440
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_0

    .line 1442
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection;->releaseConnectionMemory()V

    .line 1444
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 1445
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection;->releaseConnectionMemory()V

    .line 1446
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    goto :goto_0

    .line 1447
    :cond_1
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->SHRINK:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 1448
    monitor-exit v0

    .line 1449
    return-void

    .line 1448
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist saveConnectionKey([B)V
    .locals 3
    .param p1, "key"    # [B

    .line 381
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    if-eqz v0, :cond_2

    .line 383
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mRandArrPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteGlobal;->getRandArray(J)[C

    move-result-object v0

    .line 384
    .local v0, "password":[C
    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionKey:Landroid/database/sqlite/SQLiteConnectionPool$SecureData;

    invoke-virtual {v1, v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->encryptAndSave([C[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v0    # "password":[C
    :cond_0
    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SQLiteConnectionPool"

    const-string v2, "Could not save ConnectionKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    throw v0

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setCheckpointOnClose(Z)V
    .locals 4
    .param p1, "set"    # Z

    .line 461
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 464
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnection;->setCheckpointOnClose(Z)V

    goto :goto_0

    .line 467
    :cond_0
    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not change \'checkpointOnClose\' to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because the primary connection is on used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_0
    monitor-exit v0

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setMaxConnectionPoolSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 1514
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1515
    :try_start_0
    iput p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 1516
    monitor-exit v0

    .line 1517
    return-void

    .line 1516
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setupIdleConnectionHandler(Landroid/os/Looper;J)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "timeoutMs"    # J

    .line 1374
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_0
    new-instance v1, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/os/Looper;J)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    .line 1376
    monitor-exit v0

    .line 1377
    return-void

    .line 1376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setupIdleConnectionShrinkHandler(Landroid/os/Looper;J)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "timeoutMs"    # J

    .line 1380
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1381
    :try_start_0
    new-instance v1, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/os/Looper;J)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIdleConnectionHandler:Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    .line 1382
    monitor-exit v0

    .line 1383
    return-void

    .line 1382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z
    .locals 3
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    .line 702
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v1, :cond_0

    .line 710
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 713
    :cond_0
    nop

    .line 714
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v1

    .line 713
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 704
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local p2    # "connectionFlags":I
    throw v1

    .line 715
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local p1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local p2    # "connectionFlags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnectionPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
