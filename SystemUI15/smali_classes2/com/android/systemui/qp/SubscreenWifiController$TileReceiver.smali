.class public final Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenWifiController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenWifiController;

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

    const-string v0, "SWC onReceive action: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubscreenWifiController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI_STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenWifiController;

    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p2, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiAdapter:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenWifiController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    :cond_1
    return-void
.end method
