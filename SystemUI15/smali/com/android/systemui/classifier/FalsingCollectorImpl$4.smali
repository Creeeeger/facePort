.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$4;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWirelessChargingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$4;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    :goto_0
    return-void
.end method
