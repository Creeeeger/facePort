.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiApClientSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast Received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Client Disconnected. Closing activity"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
