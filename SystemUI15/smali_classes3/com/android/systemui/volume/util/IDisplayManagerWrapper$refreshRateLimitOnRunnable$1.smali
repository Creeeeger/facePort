.class public final Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/IDisplayManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;->this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;->this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "refresh_rate_mode"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v4, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v1, :cond_1

    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iDisplayManager:Landroid/hardware/display/IDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateToken:Landroid/os/IBinder;

    const-string v3, "VolumePanelView"

    const/16 v4, 0x3c

    invoke-interface {v1, v2, v4, v3}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    const-string v1, "VolumePanelView"

    const-string v2, "enableRefreshRateMinLimit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez p0, :cond_3

    const-string p0, "VolumePanelView"

    const-string v1, "enableRefreshRateMinLimit failed"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method
