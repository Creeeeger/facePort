.class public final Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFilter:Landroid/content/IntentFilter;

.field public final synthetic this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    iget-object p1, p1, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    iget p2, p1, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
