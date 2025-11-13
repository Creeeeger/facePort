.class public final Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;
.super Lcom/android/systemui/sensor/SensorController$SensorListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-direct {p0}, Lcom/android/systemui/sensor/SensorController$SensorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExecute()V
    .locals 4

    const-string v0, "PickupController"

    const-string v1, "onExecute : Lift to wake"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x7

    const-string v3, "LiftToWake"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
