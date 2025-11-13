.class Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNetworkDiagnosticsPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "networkInfo"

    .line 64
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->-$$Nest$mtogglePreferences(Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;Z)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_1

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->-$$Nest$mtogglePreferences(Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;Z)V

    :cond_1
    :goto_0
    return-void
.end method
