.class public final Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

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

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object v0, v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object p1, p1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object p1, p1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result p1

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x11

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x18

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iput-object p2, p1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    :cond_4
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object v0, v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object p1, p1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iput-object p2, p1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    :cond_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object v0, v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object v0, v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "WifiDetailsPrefCtrl2"

    const-string v0, "OnLost and exit WifiNetworkDetailsPage"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
