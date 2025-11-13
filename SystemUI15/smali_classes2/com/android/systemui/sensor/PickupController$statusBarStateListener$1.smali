.class public final Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic $keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensor/PickupController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    iput-object p2, p0, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/sensor/SensorController;->unregister$1()V

    :cond_1
    :goto_0
    return-void
.end method
