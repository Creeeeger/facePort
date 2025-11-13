.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$3;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$3;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$3;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleDefaultNetworkLost()V

    return-void
.end method
