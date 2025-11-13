.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;
.super Ljava/lang/Object;
.source "WifiApAllowedDeviceList.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClicked(Ljava/lang/Object;)V
    .locals 7

    .line 161
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAutoHotspotCustomPreferenceListener`s onPreferenceClicked() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    instance-of v0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    if-eqz v0, :cond_5

    .line 163
    check-cast p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 164
    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 165
    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    .line 166
    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetMHSDBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick() - bleAddr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mac: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ssid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getIterator()Ljava/util/Iterator;

    .line 170
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetMHSDBG()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-eqz p1, :cond_2

    .line 171
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceClick() - SemWifiApSmartWhiteList size("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") <= MAX_ALLOWED_DEVICES("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getSize()I

    move-result v6

    if-ge v6, v4, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getSize()I

    move-result p1

    if-ge p1, v4, :cond_4

    .line 173
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$mcheckIfAnyPreferenceIsConnecting(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$fgetmSemWifiApSmartCallback(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    move-result-object p0

    invoke-virtual {p1, v1, v0, p0}, Lcom/samsung/android/wifi/SemWifiManager;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)Z

    goto :goto_1

    .line 176
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPreferenceClick() - connectToSmartD2DClient() is not called as some other preference is in connecting state"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 179
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPreferenceClick() - Already MAX allowed devices limit is reached"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_ap_warn_max_whitelist:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSecondaryIconClicked(Ljava/lang/Object;)V
    .locals 0

    .line 188
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mAutoHotspotCustomPreferenceListener`s onSecondaryIconClicked() - Triggered"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
