.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0xe

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "WifiAp state:"

    invoke-static {p1, v0, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    goto :goto_0

    :cond_1
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "waitingForWifiDisable : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-boolean v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " wifistate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-boolean v0, p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
