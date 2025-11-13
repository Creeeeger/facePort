.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method public static synthetic $r8$lambda$UJF3GljEXLYdnRj5yZfm9LsVf7M(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mrefreshPreferenceSreen(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 296
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$msetScanTimerEnableScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiP2pSettings"

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 200
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "wifi_p2p_state"

    .line 202
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_1

    const-string p1, "WIFI_P2P_STATE_DISABLED"

    .line 204
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-boolean v1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pEnabled:Z

    .line 208
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_f

    .line 209
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mfinishDueToDisabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    return-void

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-boolean p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->needToEnableP2p:Z

    if-eqz p2, :cond_2

    const-string p1, "enable P2P"

    .line 214
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestNetworkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;)V

    .line 226
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->needToEnableP2p:Z

    goto/16 :goto_1

    .line 228
    :cond_2
    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz p2, :cond_f

    .line 252
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    .line 254
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const-string/jumbo p1, "p2pGroupInfo"

    .line 256
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfputmCreatedGroupInfo(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 257
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 261
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fputmNetworkInfo(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V

    .line 263
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmNetworkInfo(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_6

    const-string p1, "connected!!!!"

    .line 264
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-boolean v3, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pConnected:Z

    .line 266
    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 269
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmAutoFinish(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 270
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mselFinish(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_0

    .line 271
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmNetworkInfo(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_7

    const-string p1, "connecting!!!!"

    .line 272
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sput-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 274
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$msetScanTimerDoNotListen(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 275
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mhideProgressBar(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_0

    .line 276
    :cond_7
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmNetworkInfo(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmNetworkInfo(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_b

    .line 278
    :cond_8
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-boolean v1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pConnected:Z

    .line 279
    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 280
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$misP2pEnabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "disconnected"

    .line 281
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfputmCreatedGroupInfo(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 285
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_a

    .line 286
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$misP2pAvailable(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 287
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mfinishDueToDisabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    return-void

    .line 293
    :cond_9
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    :cond_a
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmReceivedStickyEnabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 301
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fputmReceivedStickyEnabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    .line 302
    sget-boolean p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz p1, :cond_b

    .line 303
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$msetScanTimerEnableScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 304
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 309
    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_c
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo p1, "wifiP2pDevice"

    .line 312
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p1, :cond_f

    .line 314
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfputmThisDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 320
    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_d

    .line 321
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mfinishDueToDisabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    return-void

    .line 324
    :cond_d
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mgetThisDeviceWithP2pMac(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    :cond_e
    const-string v0, "android.net.wifi.p2p.action.WIFI_P2P_REQUEST_RESPONSE_CHANGED"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "android.net.wifi.p2p.extra.REQUEST_RESPONSE"

    .line 327
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 329
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p2

    if-nez p2, :cond_f

    if-nez p1, :cond_f

    .line 330
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    invoke-virtual {p2, p1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 331
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$msetScanTimerEnableScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    :cond_f
    :goto_1
    return-void
.end method
