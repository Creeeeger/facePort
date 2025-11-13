.class public final Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPhoneStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    iput p1, p0, Lcom/android/systemui/sensor/PickupController;->phoneState:I

    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 3

    const-string v0, "PickupController"

    const-string v1, "onStartedGoingToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V

    :cond_1
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    const-string v0, "PickupController"

    const-string v1, "onStartedWakingUp() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController;->unregister$1()V

    :cond_1
    :goto_0
    return-void
.end method
