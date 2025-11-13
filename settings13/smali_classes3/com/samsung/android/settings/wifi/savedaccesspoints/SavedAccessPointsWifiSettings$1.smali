.class Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wificonnect>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SavedAccessPointsWifiSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "com.sec.android.WIFI_CONNECTIVITY_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 156
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmSkipUpdate(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmUiHandler(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->updateList()V

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x0

    .line 165
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/net/ConnectivityManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 168
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_5

    .line 169
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmSkipUpdate(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmUiHandler(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->updateList()V

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 159
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->onWifiStateChanged(I)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_3
        -0x41a80583 -> :sswitch_2
        -0x147b62d9 -> :sswitch_1
        0x60e99352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
