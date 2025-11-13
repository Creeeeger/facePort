.class public Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;
.super Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;
.source "RoutineActionProvider.java"


# instance fields
.field private mActResult:I

.field private mContext:Landroid/content/Context;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

.field private mVpnStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmVpnHelper(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;)Lcom/samsung/android/settings/vpn/bixby/VpnHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActResult(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mActResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterVpnStateReceiver(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->registerVpnStateReceiver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterVpnStateReceiver(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->unregisterVpnStateReceiver()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mActResult:I

    return-void
.end method

.method private registerNetworkCallback(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 63
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 p2, 0xc

    .line 66
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 p2, 0x10

    .line 67
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 68
    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p2, p1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p0, "Vpn.RoutineProvider"

    const-string p1, "registerNetworkCallback"

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private registerVpnStateReceiver()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$2;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnStateReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.vpn.action.VPN_STATE_CHANGED"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p0, "Vpn.RoutineProvider"

    const-string v0, "registerVpnStateReceiver"

    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string v0, "Vpn.RoutineProvider"

    const-string v1, "unregisterNetworkCallback"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_1
    return-void
.end method

.method private unregisterVpnStateReceiver()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnStateReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "Vpn.RoutineProvider"

    const-string v0, "unregisterVpnStateReceiver"

    .line 122
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "connect_vpn"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "disconnect_vpn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->unregisterNetworkCallback()V

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->unregisterVpnStateReceiver()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->getConnectedVpnProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p0

    .line 140
    invoke-static {v0, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->getParam(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentParam: tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", param="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vpn.RoutineProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getLabelParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "connect_vpn"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "disconnect_vpn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->getLabelParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->getVpnProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->findVpnProfile(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLabelParam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    .line 209
    :cond_2
    iget-object p3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Vpn.RoutineProvider"

    .line 208
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->vpn_routine_label_param_none_selected:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 213
    :cond_3
    iget-object p0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isSupport(Ljava/lang/String;)I
    .locals 0

    const-string p0, "connect_vpn"

    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "disconnect_vpn"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mActResult:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Vpn.RoutineProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mActResult:I

    return p0
.end method

.method public onAct(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAct:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Vpn.RoutineProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onAct(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAct:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Vpn.RoutineProvider"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->unregisterNetworkCallback()V

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->unregisterVpnStateReceiver()V

    const/4 p3, 0x0

    .line 152
    iput p3, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mActResult:I

    const-string v1, "onAct: disconnecting vpn"

    if-nez p4, :cond_2

    .line 156
    invoke-static {p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->getVpnProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 157
    invoke-static {p4}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->findVpnProfile(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p0, "onAct: no vpn profile"

    .line 159
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x64

    return p0

    :cond_0
    const-string v2, "connect_vpn"

    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "onAct: registerNetworkCallback"

    .line 163
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, p4, p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->registerNetworkCallback(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "disconnect_vpn"

    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual {p0, p4}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    move-result p0

    if-nez p0, :cond_4

    const/16 p0, -0xc8

    return p0

    .line 175
    :cond_2
    invoke-static {p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->getVpnProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->findVpnProfile(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object p1

    if-nez p1, :cond_3

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p2

    .line 184
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAct: connecting vpn, lockdown="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->connect(Lcom/android/internal/net/VpnProfile;Z)Z

    :cond_4
    :goto_0
    return p3
.end method

.method public onCreate()Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mContext:Landroid/content/Context;

    .line 129
    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    const/4 p0, 0x1

    return p0
.end method
