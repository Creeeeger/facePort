.class public final Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenAirplaneController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SAC onReceive action: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubscreenAirplaneController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AIRPLANE_MODE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;

    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p2, Lcom/android/systemui/qp/SubscreenAirplaneController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenAirplaneController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    :cond_0
    return-void
.end method
