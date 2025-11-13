.class public final Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/16 p1, 0xc

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string p1, "WifiApSaAutoHotspotSwitchEnabler"

    const-string p2, "AutoHotspotNetworkCallBack`s NET_CAPABILITY_INTERNET"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string p1, "WifiApSaAutoHotspotSwitchEnabler"

    const-string v0, "AutoHotspotNetworkCallBack`s onLost"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$AutoHotspotNetworkCallBack;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
