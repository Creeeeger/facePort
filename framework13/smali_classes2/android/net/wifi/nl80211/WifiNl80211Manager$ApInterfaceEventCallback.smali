.class Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;
.super Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApInterfaceEventCallback"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

.field final synthetic blacklist this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    .line 459
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;-><init>()V

    .line 460
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 461
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    .line 462
    return-void
.end method

.method private blacklist toFrameworkBandwidth(I)I
    .locals 1
    .param p1, "bandwidth"    # I

    .line 492
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 510
    return v0

    .line 508
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 506
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 504
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 502
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 500
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 498
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 496
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 494
    :pswitch_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method synthetic blacklist lambda$onConnectedClientsChanged$0$android-net-wifi-nl80211-WifiNl80211Manager$ApInterfaceEventCallback(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .locals 1
    .param p1, "client"    # Landroid/net/wifi/nl80211/NativeWifiClient;
    .param p2, "isConnected"    # Z

    .line 474
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;->onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    return-void
.end method

.method synthetic blacklist lambda$onSoftApChannelSwitched$1$android-net-wifi-nl80211-WifiNl80211Manager$ApInterfaceEventCallback(II)V
    .locals 2
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I

    .line 484
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    .line 485
    invoke-direct {p0, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->toFrameworkBandwidth(I)I

    move-result v1

    .line 484
    invoke-interface {v0, p1, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;->onSoftApChannelSwitched(II)V

    return-void
.end method

.method public blacklist onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .locals 4
    .param p1, "client"    # Landroid/net/wifi/nl80211/NativeWifiClient;
    .param p2, "isConnected"    # Z

    .line 466
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedClientsChanged called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 468
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeWifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 473
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    nop

    .line 478
    return-void

    .line 476
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    throw v2
.end method

.method public blacklist onSoftApChannelSwitched(II)V
    .locals 4
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    nop

    .line 489
    return-void

    .line 487
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    throw v2
.end method
