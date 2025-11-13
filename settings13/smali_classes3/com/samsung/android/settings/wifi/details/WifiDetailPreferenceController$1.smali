.class Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmNetworkCapabilities(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmNetworkCapabilities(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmNetwork(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmNetworkCapabilities(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x10

    .line 172
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x11

    .line 173
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x18

    .line 174
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmViewer(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshEntityHeader()V

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fputmNetworkCapabilities(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)V

    .line 178
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmViewer(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshIpAddress()V

    .line 179
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmViewer(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshGatewayAndSubnet()V

    :cond_2
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmNetwork(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fputmLinkProperties(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmViewer(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshEntityHeader()V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmViewer(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshIpAddress()V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmViewer(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshGatewayAndSubnet()V

    :cond_0
    return-void
.end method
