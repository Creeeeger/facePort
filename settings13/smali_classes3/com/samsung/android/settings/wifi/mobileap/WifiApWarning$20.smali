.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 670
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmAOSPWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const-string p2, "WifiApWarning"

    const-string v0, "disconneting because of low battery hotspot live"

    .line 674
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance p2, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportRemoveNetwork(I)V

    .line 676
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmAOSPWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 679
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
