.class public final Lcom/android/systemui/sensor/PickupController;
.super Lcom/android/systemui/sensor/SensorController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final baseSensorListener:Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

.field public final handler:Landroid/os/Handler;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public phoneState:I

.field public final pickupListener:Ljava/util/ArrayList;

.field public final powerManager:Landroid/os/PowerManager;

.field public final registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/sensor/PickupController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/sensor/PickupController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 0

    invoke-direct {p0, p6}, Lcom/android/systemui/sensor/SensorController;-><init>(Landroid/hardware/SensorManager;)V

    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p4, p0, Lcom/android/systemui/sensor/PickupController;->powerManager:Landroid/os/PowerManager;

    iput-object p5, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/sensor/PickupController$registerRunnable$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    new-instance p3, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance p4, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;

    invoke-direct {p4, p0, p1}, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;-><init>(Lcom/android/systemui/sensor/PickupController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {p2, p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance p1, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController;->baseSensorListener:Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

    return-void
.end method

.method public static final access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLiftToWakeEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController;->unregister$1()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v3, "SensorController"

    if-nez v2, :cond_3

    const-string p0, "register - not supported sensor type=1"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-boolean v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    if-eqz v2, :cond_4

    const-string p0, "register - already registered sensor type=1"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/sensor/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v4, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, p0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "register - requestTriggerSensor return false"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string p0, "register"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "   PickupController Dump"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "      addedMonitorCallback="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object p2, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/systemui/sensor/PickupController$dump$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/sensor/PickupController$dump$1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onTrigger()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/sensor/PickupController;->phoneState:I

    const/4 v1, 0x2

    const-string v2, "PickupController"

    if-ne v0, v1, :cond_0

    const-string p0, "onTrigger return cause by CALL_STATE_OFFHOOK"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onTrigger Listener.size()="

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController$SensorListener;->onExecute()V

    :cond_1
    return-void
.end method
