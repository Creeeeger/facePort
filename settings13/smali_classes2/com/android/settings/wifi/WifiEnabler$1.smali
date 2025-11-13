.class Lcom/android/settings/wifi/WifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$misWifiBlocked(Lcom/android/settings/wifi/WifiEnabler;)[Z

    move-result-object p1

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fputmCurrentWifiState(Lcom/android/settings/wifi/WifiEnabler;I)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmCurrentWifiState(Lcom/android/settings/wifi/WifiEnabler;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$mhandleWifiStateChanged(Lcom/android/settings/wifi/WifiEnabler;I)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmGateMessageManager(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmGateMessageManager(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmCurrentWifiState(Lcom/android/settings/wifi/WifiEnabler;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->handleWifiStateChangedForGateMassage(I)V

    goto :goto_0

    :cond_1
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmConnected(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 118
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const-string/jumbo p1, "newState"

    .line 119
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 118
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$mhandleStateChanged(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "networkInfo"

    .line 122
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 124
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmConnected(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$mhandleStateChanged(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    .line 127
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmGateMessageManager(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 128
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiEnabler;->-$$Nest$fgetmGateMessageManager(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->handleStateChangedForGateMessage(Landroid/net/NetworkInfo$DetailedState;)V

    :cond_3
    :goto_0
    return-void
.end method
