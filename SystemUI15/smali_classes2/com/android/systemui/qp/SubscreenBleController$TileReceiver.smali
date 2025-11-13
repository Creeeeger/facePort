.class public final Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SBC onReceive action: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubscreenBleController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "BLUETOOTH_STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    invoke-virtual {p1}, Lcom/android/systemui/qp/SubscreenBleController;->isEnabled()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p2, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    :cond_1
    return-void
.end method
