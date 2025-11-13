.class public final Lcom/android/systemui/power/DozeChargingHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public displayManager:Landroid/hardware/display/IDisplayManager;

.field public final displayStateLock:Landroid/os/IBinder;

.field public dozeChargingDrawWakelock:Landroid/os/PowerManager$WakeLock;

.field public isDozeChargingWorking:Z

.field public final passiveModeLock:Landroid/os/IBinder;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final powerManager:Landroid/os/PowerManager;

.field public refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/power/DozeChargingHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/DozeChargingHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/DozeChargingHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/power/DozeChargingHelper;->powerManager:Landroid/os/PowerManager;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/DozeChargingHelper;->displayStateLock:Landroid/os/IBinder;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/DozeChargingHelper;->passiveModeLock:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final handleDisplayStateWhenDozeCharging()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/power/DozeChargingHelper;->isDozeChargingCondition()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PowerUI.DozeChargingHelper"

    const-string v1, "Lcd OFF -> so call chargingAnimStarted(true)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/DozeChargingHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/power/DozeChargingHelper;->powerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "PowerUI"

    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/power/DozeChargingHelper;->dozeChargingDrawWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    const-wide/16 v3, 0xfa0

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    const-string v0, "PowerUI.DozeChargingHelper"

    const-string/jumbo v3, "setDisplayLimit(Display.STATE_ON), "

    const-string v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/DozeChargingHelper;->displayManager:Landroid/hardware/display/IDisplayManager;

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/power/DozeChargingHelper;->displayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/DozeChargingHelper;->displayStateLock:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/hardware/display/IDisplayManager;->setDisplayStateOverride(Landroid/os/IBinder;I)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/power/DozeChargingHelper;->displayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/DozeChargingHelper;->passiveModeLock:Landroid/os/IBinder;

    const-string v4, "PowerUI"

    invoke-interface {v3, v2, v4}, Landroid/hardware/display/IDisplayManager;->acquirePassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lcom/android/systemui/power/DozeChargingHelper;->refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    const-string/jumbo v3, "setDisplayLimit : RemoteException!! ERROR case"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/power/DozeChargingHelper;->isDozeChargingWorking:Z

    goto :goto_5

    :goto_4
    monitor-exit p0

    throw v0

    :cond_4
    :goto_5
    return-void
.end method

.method public final handlePluginAodCharging(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/power/DozeChargingHelper;->isDozeChargingCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.DozeChargingHelper"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/DozeChargingHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    :cond_0
    return-void
.end method

.method public final isDozeChargingCondition()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/DozeChargingHelper;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/DozeChargingHelper;->powerManager:Landroid/os/PowerManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenCurtainEnabled()Z

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final restoreDisplayStateWhenDozeCharging()V
    .locals 5

    const-string v0, "PowerUI.DozeChargingHelper"

    iget-boolean v1, p0, Lcom/android/systemui/power/DozeChargingHelper;->isDozeChargingWorking:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restoreDisplayStateWhenDozeCharging : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/power/DozeChargingHelper;->isDozeChargingWorking:Z

    if-eqz v0, :cond_3

    const-string v0, "PowerUI.DozeChargingHelper"

    const-string v1, "isDozeChargingWorking is true -> so call chargingAnimStarted(false)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PowerUI.DozeChargingHelper"

    const-string v1, "releaseDisplayStateLimit(Display.STATE_UNKNOWN), "

    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/DozeChargingHelper;->displayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/power/DozeChargingHelper;->displayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/DozeChargingHelper;->displayStateLock:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3}, Landroid/hardware/display/IDisplayManager;->setDisplayStateOverride(Landroid/os/IBinder;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/DozeChargingHelper;->refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/DozeChargingHelper;->refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "releaseDisplayStateLimit : RemoteException!! ERROR case"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/DozeChargingHelper;->dozeChargingDrawWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/DozeChargingHelper;->dozeChargingDrawWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_3
    monitor-exit p0

    iget-object v0, p0, Lcom/android/systemui/power/DozeChargingHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    iput-boolean v3, p0, Lcom/android/systemui/power/DozeChargingHelper;->isDozeChargingWorking:Z

    goto :goto_5

    :goto_4
    monitor-exit p0

    throw v0

    :cond_3
    :goto_5
    return-void
.end method
