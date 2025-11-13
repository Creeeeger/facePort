.class public final Lcom/android/systemui/qp/SubscreenWifiController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/systemui/qp/SubscreenWifiController;


# instance fields
.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mSignalCallback:Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;

.field public final mWifiAdapter:Landroid/net/wifi/WifiManager;

.field public mWifiReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

.field public mWifiState:Z

.field public mWifiView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

.field public mWifiViewReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/qp/SubscreenWifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiAdapter:Landroid/net/wifi/WifiManager;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    new-instance v0, Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;-><init>(Lcom/android/systemui/qp/SubscreenWifiController;I)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mSignalCallback:Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenWifiController;
    .locals 1

    sget-object v0, Lcom/android/systemui/qp/SubscreenWifiController;->sInstance:Lcom/android/systemui/qp/SubscreenWifiController;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/systemui/qp/SubscreenWifiController;->mContext:Landroid/content/Context;

    new-instance p0, Lcom/android/systemui/qp/SubscreenWifiController;

    invoke-direct {p0}, Lcom/android/systemui/qp/SubscreenWifiController;-><init>()V

    sput-object p0, Lcom/android/systemui/qp/SubscreenWifiController;->sInstance:Lcom/android/systemui/qp/SubscreenWifiController;

    :cond_0
    sget-object p0, Lcom/android/systemui/qp/SubscreenWifiController;->sInstance:Lcom/android/systemui/qp/SubscreenWifiController;

    return-object p0
.end method


# virtual methods
.method public final registerReceiver(Z)V
    .locals 8

    const-string v0, "WIFI_STATE_CHANGE"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;-><init>(Lcom/android/systemui/qp/SubscreenWifiController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiViewReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;-><init>(Lcom/android/systemui/qp/SubscreenWifiController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SWC registerWifiReceiver mWifiViewReceiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiViewReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mWifiReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiViewReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    goto :goto_1

    :goto_2
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.systemui.permission.WIFI_STATE_CHANGE"

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mSignalCallback:Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final unRegisterReceiver(Z)V
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string v2, "SubscreenWifiController"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiViewReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SWC unRegisterReceiver mWifiViewReceiver: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiViewReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiViewReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiViewReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SWC unRegisterReceiver mWifiReceiver: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiReceiver:Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mSignalCallback:Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
