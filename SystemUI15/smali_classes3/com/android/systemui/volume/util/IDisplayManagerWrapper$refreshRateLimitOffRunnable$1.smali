.class public final Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/IDisplayManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;->this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;->this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    const-string v1, "VolumePanelView"

    const-string v2, "disableRefreshRateMinLimit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
