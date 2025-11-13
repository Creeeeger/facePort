.class public final Landroidx/room/support/AutoCloser;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final autoCloseTimeoutInMs:J

.field public final autoCloser:Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

.field public delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field public delegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field public final executeAutoCloser:Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final handler:Landroid/os/Handler;

.field public final lastDecrementRefCountTimeStamp:J

.field public final lock:Ljava/lang/Object;

.field public manuallyClosed:Z

.field public onAutoCloseCallback:Ljava/lang/Runnable;

.field public refCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/support/AutoCloser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/support/AutoCloser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/room/support/AutoCloser;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/room/support/AutoCloser;->lock:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/room/support/AutoCloser;->autoCloseTimeoutInMs:J

    iput-object p4, p0, Landroidx/room/support/AutoCloser;->executor:Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/room/support/AutoCloser;->lastDecrementRefCountTimeStamp:J

    new-instance p1, Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;-><init>(Landroidx/room/support/AutoCloser;I)V

    iput-object p1, p0, Landroidx/room/support/AutoCloser;->executeAutoCloser:Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;-><init>(Landroidx/room/support/AutoCloser;I)V

    iput-object p1, p0, Landroidx/room/support/AutoCloser;->autoCloser:Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final decrementCountAndScheduleClose()V
    .locals 5

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/room/support/AutoCloser;->refCount:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/room/support/AutoCloser;->refCount:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/room/support/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/room/support/AutoCloser;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/room/support/AutoCloser;->executeAutoCloser:Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

    iget-wide v3, p0, Landroidx/room/support/AutoCloser;->autoCloseTimeoutInMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    const-string p0, "ref count is 0 or lower but we\'re supposed to decrement"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final executeRefCountingFunction(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->decrementCountAndScheduleClose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public final incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 3

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/support/AutoCloser;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/room/support/AutoCloser;->executeAutoCloser:Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Landroidx/room/support/AutoCloser;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/room/support/AutoCloser;->refCount:I

    iget-boolean v1, p0, Landroidx/room/support/AutoCloser;->manuallyClosed:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/room/support/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/room/support/AutoCloser;->delegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/support/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_2
    :try_start_2
    const-string p0, "Attempting to open already closed database."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method
