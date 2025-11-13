.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string p2, "Broadcast Received: "

    const-string v0, "WifiApClientSettings"

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-static {p2, p1, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Client Disconnected. Closing activity"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
