.class public final Landroidx/room/BaseRoomConnectionManager$DriverWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/sqlite/SQLiteDriver;


# instance fields
.field public final actual:Landroidx/sqlite/SQLiteDriver;

.field public final synthetic this$0:Landroidx/room/BaseRoomConnectionManager;


# direct methods
.method public constructor <init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteDriver;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->this$0:Landroidx/room/BaseRoomConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->actual:Landroidx/sqlite/SQLiteDriver;

    return-void
.end method


# virtual methods
.method public final open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 3

    new-instance v0, Landroidx/room/concurrent/ExclusiveLock;

    iget-object v1, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->this$0:Landroidx/room/BaseRoomConnectionManager;

    iget-boolean v2, v1, Landroidx/room/BaseRoomConnectionManager;->isConfigured:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    if-nez v2, :cond_0

    const-string v2, ":memory:"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, p1, v2}, Landroidx/room/concurrent/ExclusiveLock;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;

    invoke-direct {v2, v1, p0, p1}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;)V

    iget-object p0, v0, Landroidx/room/concurrent/ExclusiveLock;->threadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p0, v0, Landroidx/room/concurrent/ExclusiveLock;->fileLock:Landroidx/room/concurrent/FileLock;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/room/concurrent/FileLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p0, :cond_3

    :try_start_2
    iget-object v2, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/nio/channels/FileChannel;

    goto :goto_2

    :catchall_1
    move-exception v1

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/nio/channels/FileChannel;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_2
    iget-object p0, v0, Landroidx/room/concurrent/ExclusiveLock;->threadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    return-object v1

    :catchall_2
    move-exception v1

    if-eqz p0, :cond_5

    :try_start_5
    iget-object v2, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/nio/channels/FileChannel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/nio/channels/FileChannel;

    goto :goto_3

    :catchall_3
    move-exception v1

    iput-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/nio/channels/FileChannel;

    throw v1

    :cond_5
    :goto_3
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    iget-object p1, v0, Landroidx/room/concurrent/ExclusiveLock;->threadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
