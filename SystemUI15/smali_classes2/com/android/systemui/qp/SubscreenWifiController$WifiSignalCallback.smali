.class public final Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenWifiController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qp/SubscreenWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;->this$0:Lcom/android/systemui/qp/SubscreenWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubscreenWifiController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;-><init>(Lcom/android/systemui/qp/SubscreenWifiController;)V

    return-void
.end method


# virtual methods
.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWifiIndicators enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    const-string v1, "SubscreenWifiController"

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController$WifiSignalCallback;->this$0:Lcom/android/systemui/qp/SubscreenWifiController;

    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiState:Z

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    :cond_0
    return-void
.end method
