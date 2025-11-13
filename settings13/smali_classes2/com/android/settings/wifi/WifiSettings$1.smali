.class Lcom/android/settings/wifi/WifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$misRetryPopupNeeded(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 382
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fgetmManualConnectingNetwork(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mshowConnectFragmentForRetry(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.wifi.salogging.intent.action.WIFI_TIPS_SA_LOGGING"

    .line 384
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 386
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fgetmLoggingScreenId(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1500"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.updateautohotspot"

    .line 387
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 388
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mautoHotspotPreferenceCategory(Lcom/android/settings/wifi/WifiSettings;)V

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

    .line 389
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 390
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mshowAutoWifiTipPopup(Lcom/android/settings/wifi/WifiSettings;)V

    goto :goto_0

    :cond_3
    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.updatemcfhotspot"

    .line 391
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 392
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$maddMcfAutoHotspotPreference(Lcom/android/settings/wifi/WifiSettings;)V

    :cond_4
    :goto_0
    return-void
.end method
