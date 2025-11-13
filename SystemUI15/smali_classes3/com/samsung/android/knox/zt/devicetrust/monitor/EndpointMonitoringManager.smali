.class public Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static volatile sInstance:Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;


# instance fields
.field public final mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "EndpointMonitoringManager failed : "

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;

    return-object p0
.end method


# virtual methods
.method public ackSignal([J)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->ackSignal([J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "ackSignal failed : "

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMonitoringSnapshot(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getMonitoringSnapshot(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "getMonitoringSnapshot failed : "

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "getVersion failed : "

    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryAllSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->queryAllSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo v0, "queryAllSignals failed : "

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public querySignals(Ljava/lang/String;Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->querySignals(Ljava/lang/String;Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo p2, "querySignals failed : "

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;",
            ")I"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo p2, "startMonitoringFiles failed : "

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;",
            ")I"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo p2, "startMonitoringFiles failed : "

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startMonitoringSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/SignalMonitoringListener;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->startMonitoringSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/SignalMonitoringListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo v0, "startMonitoringSignals failed : "

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo p2, "startTracing failed : "

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopMonitoringDomains()I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->stopMonitoringDomains()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo v1, "stopMonitoringDomains failed : "

    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopMonitoringFiles()I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->stopMonitoringFiles()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo v1, "stopMonitoringFiles failed : "

    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopMonitoringSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/SignalMonitoringListener;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->stopMonitoringSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/SignalMonitoringListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo v0, "startMonitoringSignals failed : "

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopTracing(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->stopTracing(ILcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I

    move-result p0

    return p0
.end method

.method public stopTracing(ILcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/monitor/EndpointMonitoringManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->stopTracing(ILcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo p2, "stopTracing failed : "

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
