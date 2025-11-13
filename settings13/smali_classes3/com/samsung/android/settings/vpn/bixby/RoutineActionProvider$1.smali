.class Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RoutineActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->registerNetworkCallback(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;

.field final synthetic val$param:Ljava/lang/String;

.field final synthetic val$selectedProfile:Lcom/android/internal/net/VpnProfile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;

    iput-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;->val$selectedProfile:Lcom/android/internal/net/VpnProfile;

    iput-object p3, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string p1, "Vpn.RoutineProvider"

    const-string v0, "NetworkCallback: onAvailable"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;

    invoke-static {v0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->-$$Nest$fgetmVpnHelper(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;)Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;->val$selectedProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;->val$param:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->connect(Lcom/android/internal/net/VpnProfile;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NetworkCallback: onAvailable: act FAILED"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;

    const/16 p1, -0xc8

    invoke-static {p0, p1}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->-$$Nest$fputmActResult(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;I)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider$1;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;

    invoke-static {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;->-$$Nest$mregisterVpnStateReceiver(Lcom/samsung/android/settings/vpn/bixby/RoutineActionProvider;)V

    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    return-void
.end method
