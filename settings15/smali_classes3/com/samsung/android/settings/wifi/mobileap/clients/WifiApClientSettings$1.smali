.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;
.super Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClientUpdated(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClientUpdated() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApClientSettings"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Client Disconnected callback. Closing activity"

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->refreshConnectedPreferences()V

    return-void
.end method
