.class Lcom/android/settings/wifi/WifiSettings$8;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 1832
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 5

    .line 1835
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$smDBG()Z

    move-result v0

    const-string v1, "WifiSettings"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onConnect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fgetmRetryPopupController(Lcom/android/settings/wifi/WifiSettings;)Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->checkToShowRetryForIncorrectPasswordLength(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1837
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mshowConnectFragmentForRetry(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_1

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    .line 1840
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fgetmRetryPopupController(Lcom/android/settings/wifi/WifiSettings;)Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->isSecurityTypeSupportRetry(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fputmManualConnectingNetwork(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 1842
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1843
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1844
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear bssid info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fgetmLog(Lcom/android/settings/wifi/WifiSettings;)Lcom/samsung/wifitrackerlib/LogUtils;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1846
    invoke-virtual {v3, v4}, Lcom/samsung/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1845
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "any"

    .line 1847
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1848
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1851
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    :goto_1
    return-void
.end method

.method public onForget(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 1857
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$smDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "onForget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mforget(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 1863
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$smDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "onItemClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fgetmRetryPopupController(Lcom/android/settings/wifi/WifiSettings;)Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->checkToShowRetryForIncorrectPasswordLength(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1865
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mshowConnectFragmentForRetry(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_1

    .line 1867
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    .line 1868
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fgetmRetryPopupController(Lcom/android/settings/wifi/WifiSettings;)Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->isSecurityTypeSupportRetry(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fputmManualConnectingNetwork(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 1869
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onWifiEntryPreferenceClick(Lcom/android/wifitrackerlib/WifiEntry;)Z

    :goto_1
    return-void
.end method

.method public onLaunchActivity()V
    .locals 3

    .line 1875
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fputmScrollTimer(Lcom/android/settings/wifi/WifiSettings;J)V

    .line 1876
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fputmIsLaunching(Lcom/android/settings/wifi/WifiSettings;Z)V

    return-void
.end method

.method public onLaunchActivityFinished()V
    .locals 1

    .line 1881
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fputmIsLaunching(Lcom/android/settings/wifi/WifiSettings;Z)V

    return-void
.end method
