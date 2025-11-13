.class public final Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/net/wifi/WifiManager$TrafficStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;->this$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;)V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$WifiTrafficStateCallback;->this$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->setActivity(I)V

    return-void
.end method
