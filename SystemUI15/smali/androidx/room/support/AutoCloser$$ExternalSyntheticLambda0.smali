.class public final synthetic Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/room/support/AutoCloser;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/support/AutoCloser;I)V
    .locals 0

    iput p2, p0, Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;->f$0:Landroidx/room/support/AutoCloser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;->f$0:Landroidx/room/support/AutoCloser;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/room/support/AutoCloser;->lastDecrementRefCountTimeStamp:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroidx/room/support/AutoCloser;->autoCloseTimeoutInMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget v1, p0, Landroidx/room/support/AutoCloser;->refCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/room/support/AutoCloser;->onAutoCloseCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/room/support/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_3
    iput-object v2, p0, Landroidx/room/support/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    :goto_1
    return-void

    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "onAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit v0

    throw p0

    :pswitch_0
    iget-object v0, p0, Landroidx/room/support/AutoCloser;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/support/AutoCloser;->autoCloser:Landroidx/room/support/AutoCloser$$ExternalSyntheticLambda0;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
