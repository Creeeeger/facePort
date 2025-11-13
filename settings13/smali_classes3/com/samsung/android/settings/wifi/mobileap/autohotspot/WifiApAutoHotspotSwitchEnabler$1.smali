.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApAutoHotspotSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast Received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.internet.changed"

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_3
    const-string p2, "ABSENT"

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_4
    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    :cond_5
    :goto_0
    return-void
.end method
