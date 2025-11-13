.class public final Lcom/android/systemui/qp/SubscreenAirplaneController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/systemui/qp/SubscreenAirplaneController;


# instance fields
.field public mAirplaneReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

.field public mAirplaneView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

.field public mAirplaneViewReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenAirplaneController;
    .locals 1

    sget-object v0, Lcom/android/systemui/qp/SubscreenAirplaneController;->sInstance:Lcom/android/systemui/qp/SubscreenAirplaneController;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mContext:Landroid/content/Context;

    new-instance p0, Lcom/android/systemui/qp/SubscreenAirplaneController;

    invoke-direct {p0}, Lcom/android/systemui/qp/SubscreenAirplaneController;-><init>()V

    sput-object p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->sInstance:Lcom/android/systemui/qp/SubscreenAirplaneController;

    :cond_0
    sget-object p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->sInstance:Lcom/android/systemui/qp/SubscreenAirplaneController;

    return-object p0
.end method


# virtual methods
.method public final registerReceiver(Z)V
    .locals 8

    const-string v0, "AIRPLANE_MODE_CHANGE"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;-><init>(Lcom/android/systemui/qp/SubscreenAirplaneController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneViewReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;-><init>(Lcom/android/systemui/qp/SubscreenAirplaneController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SAC registerAirplaneReceiver mAirplaneViewReceiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneViewReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mAirplaneReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenAirplaneController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneViewReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    :goto_1
    move-object v2, p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    goto :goto_1

    :goto_2
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.systemui.permission.AIRPLANE_STATE_CHANGE"

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    return-void
.end method

.method public final unRegisterReceiver(Z)V
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string v2, "SubscreenAirplaneController"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneViewReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SAC unRegisterReceiver mAirplaneViewReceiver: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneViewReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneViewReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneViewReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SAC unRegisterReceiver mAirplaneReceiver: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneReceiver:Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;

    :cond_1
    :goto_0
    return-void
.end method
