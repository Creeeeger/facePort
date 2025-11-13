.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransactEnded(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    check-cast p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->compareDuration:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->sSkipCallCount:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne v4, v5, :cond_3

    array-length v4, v2

    move v5, v6

    move v8, v5

    move-object v9, v7

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v10, v2, v5

    add-int/lit8 v8, v8, 0x1

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "onTransactEnded"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "transact"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object v9, v10

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    :goto_1
    sput v8, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->sSkipCallCount:I

    :cond_3
    move-object v4, v7

    :goto_2
    const/16 v5, 0x14

    if-ge v6, v5, :cond_7

    sget v5, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->sSkipCallCount:I

    add-int/2addr v5, v6

    array-length v8, v2

    if-lt v5, v8, :cond_4

    move-object v5, v7

    goto :goto_3

    :cond_4
    aget-object v5, v2, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    if-nez v6, :cond_6

    move-object v4, v5

    :cond_6
    const-string v8, "    "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->stackTrace:Ljava/lang/String;

    const-string v2, "** "

    const-string v3, " "

    invoke-static {v2, v4, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v3, 0xf4240

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BinderCallMonitor"

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->stackTrace:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "   * %dms\n%s"

    invoke-static {v0, p1}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .locals 10

    const/4 p1, 0x1

    and-int/lit8 p2, p3, 0x1

    if-eq p2, p1, :cond_4

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sget-wide v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    iget-object v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_2

    iget-object v7, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;

    iget-boolean v8, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    if-eqz v8, :cond_0

    iget-boolean v8, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->infinite:Z

    if-nez v8, :cond_0

    iget-wide v8, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->timeOut:J

    cmp-long v8, v8, p2

    if-gtz v8, :cond_0

    iput-boolean v4, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    iget-boolean v8, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    if-eqz v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    iget-wide v7, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->duration:J

    cmp-long v9, v7, v0

    if-gez v9, :cond_1

    move-wide v0, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v0, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mDuration:J

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    iget-wide p2, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mDuration:J

    invoke-direct {p1, p2, p3, v4}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;-><init>(JI)V

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method
