.class Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;
.super Landroid/os/Handler;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleConnectionHandler"
.end annotation


# instance fields
.field private final blacklist mOnAllConnectionsIdle:Ljava/lang/Runnable;

.field protected final greylist-max-o mTimeout:J

.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnectionPool;


# direct methods
.method constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/os/Looper;JLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-wide p3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    iput-object p5, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mOnAllConnectionsIdle:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method greylist-max-o connectionAcquired(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->removeMessages(I)V

    return-void
.end method

.method greylist-max-o connectionClosed(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->removeMessages(I)V

    return-void
.end method

.method greylist-max-o connectionReleased(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$fgetmLock(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$fgetmIdleConnectionHandler(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    move-result-object v1

    if-eq p0, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$mcloseAvailableConnectionLocked(Landroid/database/sqlite/SQLiteConnectionPool;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SQLiteConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closed idle connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$fgetmConfiguration(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mOnAllConnectionsIdle:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mOnAllConnectionsIdle:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
