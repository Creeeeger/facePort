.class Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiExceptionNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.WIFI_WCM_CONFIGURATION_CHANGED"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WifiExceptionNetworkSettings"

    const-string p2, "WIFI_WCM_CONFIGURATION_CHANGED"

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->-$$Nest$mupdateExcludedNetworks(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 118
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;->-$$Nest$mfinishWifiExceptionSettings(Lcom/samsung/android/settings/wifi/intelligent/WifiExceptionNetworkSettings;)V

    :cond_1
    :goto_0
    return-void
.end method
