.class Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiSmartNetworkSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 89
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->-$$Nest$mupdateSmartNetworkSwitchServiceCheck(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->-$$Nest$mupdateSmartNetworkSwitchServiceCheck(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.ANY_DATA_STATE"

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 97
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->-$$Nest$mupdateSmartNetworkSwitchServiceCheck(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V

    :cond_4
    :goto_0
    return-void
.end method
