.class Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "EthernetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string p1, "SettingsEthEnabler"

    const-string v0, "NetworkCallback onConnected"

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p1, "SettingsEthEnabler"

    const-string v0, "NetworkCallback onDisConnected"

    .line 101
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    return-void
.end method
