.class public final Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# instance fields
.field public mLastSensorValue:Z

.field public mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

.field public final mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public final mSupportPositionSensor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "scontext"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const-string p1, "UpsideDownChecker"

    const-string v0, "The Sensor is not supported in device"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "UpsideDownChecker"

    const-string/jumbo v1, "unregister sensor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/16 v1, 0x16

    const-string v2, "UpsideDownChecker"

    if-eq v0, v1, :cond_0

    const-string p0, "onSemContextChanged: not sensor type"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSContextChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mLastSensorValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->onChanged(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->onChanged(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    goto :goto_0

    :cond_3
    const-string p0, "onSContextChanged(), listener is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public final run(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v0, :cond_0

    const-string p0, "UpsideDownChecker"

    const-string p1, "The sensor is not supported in device"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    if-eqz v0, :cond_1

    const-string p1, "UpsideDownChecker"

    const-string/jumbo v0, "run: Listener is not null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v0, 0x16

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
