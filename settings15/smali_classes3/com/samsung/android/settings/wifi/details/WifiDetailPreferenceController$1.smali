.class public final Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x10

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x11

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x18

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshEntityHeader()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshIpAddress()V

    :cond_2
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iput-object p2, p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshEntityHeader()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshIpAddress()V

    :cond_0
    return-void
.end method
