.class public final Lcom/android/systemui/qp/SubscreenBleController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/systemui/qp/SubscreenBleController;


# instance fields
.field public mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

.field public mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

.field public mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

.field public final mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field public final mCallback:Lcom/android/systemui/qp/SubscreenBleController$1;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qp/SubscreenBleController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBleController$1;-><init>(Lcom/android/systemui/qp/SubscreenBleController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mCallback:Lcom/android/systemui/qp/SubscreenBleController$1;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenBleController;
    .locals 1

    sget-object v0, Lcom/android/systemui/qp/SubscreenBleController;->sInstance:Lcom/android/systemui/qp/SubscreenBleController;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/systemui/qp/SubscreenBleController;->mContext:Landroid/content/Context;

    new-instance p0, Lcom/android/systemui/qp/SubscreenBleController;

    invoke-direct {p0}, Lcom/android/systemui/qp/SubscreenBleController;-><init>()V

    sput-object p0, Lcom/android/systemui/qp/SubscreenBleController;->sInstance:Lcom/android/systemui/qp/SubscreenBleController;

    :cond_0
    sget-object p0, Lcom/android/systemui/qp/SubscreenBleController;->sInstance:Lcom/android/systemui/qp/SubscreenBleController;

    return-object p0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result p0

    const-string v0, "SBC isEnabled enabled: "

    const-string v1, "SubscreenBleController"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final registerReceiver(Z)V
    .locals 8

    const-string v0, "BLUETOOTH_STATE_CHANGE"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;-><init>(Lcom/android/systemui/qp/SubscreenBleController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;-><init>(Lcom/android/systemui/qp/SubscreenBleController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SBC registerBleReceiver mBleViewReceiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mBleReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenBleController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    goto :goto_1

    :goto_2
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.systemui.permission.BLUETOOTH_STATE_CHANGE"

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mCallback:Lcom/android/systemui/qp/SubscreenBleController$1;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final unRegisterReceiver(Z)V
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string v2, "SubscreenBleController"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SBC unRegisterReceiver mBleViewReceiver: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SBC unRegisterReceiver mBleReceiver: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mCallback:Lcom/android/systemui/qp/SubscreenBleController$1;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
