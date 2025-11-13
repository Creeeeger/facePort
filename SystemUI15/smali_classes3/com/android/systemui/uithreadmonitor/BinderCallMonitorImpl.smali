.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;


# static fields
.field public static sSkipCallCount:I = -0x1


# instance fields
.field public mDuration:J

.field public mLogger:Lcom/android/systemui/log/SamsungServiceLogger;

.field public final mMonitorInfo:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mDuration:J

    return-void
.end method


# virtual methods
.method public final startMonitoring(IJJ)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/4 v1, 0x6

    if-ge p1, v1, :cond_3

    const-wide/16 v1, 0x1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_3

    const-wide/16 v1, 0xbb8

    cmp-long v1, p4, v1

    if-ltz v1, :cond_3

    const-wide/16 v1, 0x1f40

    cmp-long v1, p4, v1

    if-lez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;

    invoke-direct {v2, v0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;-><init>(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const-wide/32 v3, 0xf4240

    mul-long/2addr p2, v3

    iput-wide p2, v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->duration:J

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iput-boolean p2, v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->infinite:Z

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p4

    iput-wide v3, v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->timeOut:J

    :goto_1
    iput-boolean p2, v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return p2

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    const-string p0, "BinderCallMonitor"

    const-string p1, "not monitoring started"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
