.class public final Lcom/android/systemui/qp/SubscreenBleController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController$1;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBluetoothDevicesChanged()V
    .locals 0

    return-void
.end method

.method public final onBluetoothStateChange(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController$1;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBluetoothStateChange = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubscreenBleController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    if-eqz p0, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    :cond_1
    return-void
.end method
