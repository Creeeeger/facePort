.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field public final synthetic val$mac_addr:Ljava/lang/String;

.field public final synthetic val$mhs_device:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->val$mac_addr:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->val$mhs_device:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->val$mac_addr:Ljava/lang/String;

    const-string p2, "WifiApWarning"

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->val$mhs_device:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mcheckIfBleScanResultValid(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string p1, "Autohotspot connect 2"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v2, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v3, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v4, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v5, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v7, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    iget-boolean v8, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wifi/SemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Autohotspot values are null"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
