.class Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;
.super Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleConnectionShrinkHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnectionPool;


# direct methods
.method constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/os/Looper;J)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "timeout"    # J

    .line 1698
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1699
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/os/Looper;J)V

    .line 1700
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1704
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$fgetmLock(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1705
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$fgetmIdleConnectionHandler(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    move-result-object v1

    if-eq p0, v1, :cond_0

    .line 1706
    monitor-exit v0

    return-void

    .line 1708
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->-$$Nest$mreleaseAvailableConnectionMemoryLocked(Landroid/database/sqlite/SQLiteConnectionPool;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1709
    const-string v1, "SQLiteConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1710
    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Released idle connection\'s memory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

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

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionShrinkHandler;->mTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_1
    monitor-exit v0

    .line 1715
    return-void

    .line 1714
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
