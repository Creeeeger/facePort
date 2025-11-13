.class Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings$1;
.super Landroid/content/BroadcastReceiver;
.source "Hotspot20Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wificonnect>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hotspot20Settings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->-$$Nest$mgetPasspointConfigurations(Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 70
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/Hotspot20Settings;->onWifiStateChanged(I)V

    :goto_0
    return-void
.end method
